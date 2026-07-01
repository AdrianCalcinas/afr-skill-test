// API pública: https://jsonplaceholder.typicode.com/users/1
// Responde con un objeto que incluye, entre otros campos: { id: 1, name: "Leanne Graham", ... }

const API_URL = 'https://jsonplaceholder.typicode.com/users';

async function obtenerUsuario() {
  try {
    // TODO: Usa fetch para obtener los datos del usuario con id 1
    const response = await fetch(`${API_URL}/1`);
    
    // TODO: Convierte la respuesta a JSON
    const data = await response.json();
    
    // TODO: Imprime en consola: "Usuario: " seguido del nombre del usuario
    /* tu código aquí */
    console.log(`Usuario: ${data.name}`);
  } catch (error) {
    console.error('Error al obtener el usuario:', error);
  }
}

obtenerUsuario();