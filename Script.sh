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
