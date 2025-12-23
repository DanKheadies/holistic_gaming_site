/* eslint-disable max-len */
/* eslint-disable  @typescript-eslint/no-explicit-any */
// npm run lint -- --fix

// https://softwarephilosopher.com/2022/08/12/how-to-generate-and-send-pdfs-with-mailjet-node-js-typescript/
// https://dev.mailjet.com/email/reference/send-emails#v3_1_post_send

import * as Mailjet from "node-mailjet";

import {onCall} from "firebase-functions/v2/https";
import {mailJetApiKey, mailJetSecretKey} from "./env/secrets";

const mailjet = new Mailjet.Client({
  apiKey: mailJetApiKey,
  apiSecret: mailJetSecretKey,
});

// Sends email via HTTP. Can be called from frontend code.
export const contactEmail = onCall(async (data) => {
  try {
    const response = await mailjet.post("send", {version: "v3.1"}).request({
      Messages: [
        {
          From: {
            Email: "support@holisticgaming.com",
            Name: "HG - Contact Us",
          },
          To: [
            {
              Email: "support@holisticgaming.com",
              Name: "HG Support",
            },
          ],
          Subject: "Contact Us",
          //   TextPart:
          //     data.data["name"] +
          //     " (" +
          //     data.data["email"] +
          //     ") sent the following message: " +
          //     data.data["message"],
          TemplateID: 7602200,
          //   TemplateErrorDeliver: true,
          Variables: {
            email: data.data["email"],
            // email_test: "idk@test.com",
            message: data.data["message"],
            name: data.data["name"],
          },
        },
      ],
    });
    console.log("post successful");
    console.log(response.response);
    return response.response.status;
  } catch (err) {
    return {
      error: err,
    };
  }
});

// Sends email via HTTP. Completely basic email.
export const basicEmail = onCall(async (data) => {
  try {
    // Construct a post to mailjet; note formatting from links above.
    const response = await mailjet.post("send", {version: "v3.1"}).request({
      Messages: [
        {
          From: {
            Email: "support@holisticgaming.com",
            Name: "HG - Contact Us",
          },
          To: [
            {
              Email: "support@holisticgaming.com",
              Name: "HG Support",
            },
          ],
          Subject: "Contact Us",
          TextPart:
            data.data["name"] +
            " (" +
            data.data["email"] +
            ") sent the following message: " +
            data.data["message"],
        },
      ],
    });
    console.log("post successful?");
    console.log(response.response);
    // Check the status; frontend is expecting a status code.
    if (response.response.status != 200) {
      console.log("Not 200; something went wrong");
      console.log(response.response.status);
      console.log(response.response.data);
      console.log(response.response);
    }
    return response.response.status;
  } catch (err) {
    console.log("mailjet post error");
    console.log(err);
    return {
      error: err,
    };
  }
});
