# Rocket.Chat integration
![rocketchat discord](https://raw.githubusercontent.com/zakery1369/pics/master/RocketChat-Discord.png)

<!--truncate-->

## Outgoing webhook script

### Create a new outgoing webhook

To create a new outgoing webhook:

- Navigate to Administration > Workspace > Integrations.
- Click +New in the top right corner.
- Switch to the Outgoing tab.
- Event Trigger: Select the Message Sent.
- Turn on the Enabled toggle.
- Name: Enter a name for your webhook.
- Channel: Enter the channel to listen to.
- Trigger Words: If your event trigger is Message Sent, enter the words that should trigger this webhook separated by commas.
- Enter the Discord Webhook URL.
- Post as: Enter the username that this integration posts as. This field is optional.
- Alias: Enter a nickname that appears before the username in messages.
- Avatar URL: Optionally enter an image URL as the avatar for each message the webhook posts.
- Emoji: Optionally enter an emoji to use as an avatar.
- Token: Enter a token that is used to verify authorized webhook calls. The token is optional but essential to avoid cross-site request forgery (CSRF) or replay attacks.
- Turn on Script Enabled.
- Paste the script below inside the Script field.

```js
class Script {
  /**
   * @params {object} request
   */
  prepare_outgoing_request({ request }) {


    let match;
    
    match = request.data.text.match(/^pr\s(ls|list)/);

    if (true) {
      return {
        url: request.url ,
        method: 'POST',
        data:{
          content: request.data.text
        }
       
      };
    }
  }
}
```
- Save your integration.
