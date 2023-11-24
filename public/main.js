

var next = false; // this is to be changed on user input
var answer = ""

function addMessageDoctor(message){
  var chat = document.getElementById("chat");
  var messageContent = document.createElement("div");
  messageContent.className = "first:mt-auto animate-fade-up animate-duration-500 animate-delay-[1000ms] w-2/3 break-words";
  var messageText = document.createElement("p");
  messageText.className = "font-semibold text-sm lg:text-lg text-left text-primary border-b border-gray-300 bg-gradient-to-b from-zinc-200 p-4 backdrop-blur-2xl   rounded-xl rounded-bl-none lg:border lg:bg-gray-200  lg:dark:bg-zinc-800/30 ";
  messageText.innerHTML = `¿Has experimentado<br><strong>${message}</strong>?  🤔`;
  messageContent.append(messageText);
  chat.appendChild(messageContent);
  
  chat.scrollTop = chat.scrollHeight;
  
}

function ask(x){
    answer = x;
    var chat = document.getElementById("chat");
    var messageContent = document.createElement("div");
    messageContent.className = "first:mt-auto animate-fade-up animate-duration-500 animate-delay-[500ms] w-2/3 break-words self-end";
    var messageText = document.createElement("p");
    messageText.className = "font-semibold text-sm lg:text-lg text-left text-light  border-b border-gray-300 bg-gradient-to-b from-primary to-secondary p-4  rounded-xl  bg-gradient-to-b lg:border lg:bg-gray-200 lg:p-4 lg:dark:bg-zinc-800/30";
    messageText.innerHTML = `<strong>${x}</strong>`;
    messageContent.append(messageText);
    chat.appendChild(messageContent);
    chat.scrollTop = chat.scrollHeight;
    next = true;
  }

function showResult(message){
  const capitalized = message.charAt(0).toUpperCase() + message.slice(1);
  var chat = document.getElementById("chat");
  var messageContent = document.createElement("div");
  messageContent.className = "first:mt-auto animate-fade-up animate-duration-500 animate-delay-[1000ms] w-2/3 break-words";
  var messageText = document.createElement("p");
  messageText.className = "font-semibold text-sm lg:text-lg text-left text-primary border-b border-gray-300 bg-gradient-to-b from-zinc-200 p-4 backdrop-blur-2xl   rounded-xl rounded-bl-none lg:border lg:bg-gray-200  lg:dark:bg-zinc-800/30 ";
  messageText.innerHTML = `
  Según los síntomas que has proporcionado, podría ser prudente consultar a un profesional de la salud para evaluar la posibilidad de   <strong>${capitalized}</strong> y obtener un diagnóstico más preciso
`;
  messageContent.append(messageText);
  chat.appendChild(messageContent);
  chat.scrollTop = chat.scrollHeight;
  document.getElementById("yes").remove();
  document.getElementById("no").remove();
}

  var timeout = async ms => new Promise(res => setTimeout(res, ms));
  

  async function waitUserInput() {
      while (next === false) {
      await timeout(0); // pauses script
      }
      
      next = false; // reset var
  }


async function  input(){
    await waitUserInput();
    return answer;
};


