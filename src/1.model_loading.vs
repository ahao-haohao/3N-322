#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;
layout (location = 3) in vec3 aTexColor;

out vec3 Normal;
out vec3 FragPos;
out vec2 TexCoords;
out vec3 TexColor;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform mat3 nor_model;

void main()
{
    TexCoords = aTexCoords;  
    TexColor = aTexColor;  

    FragPos = vec3(model * vec4(aPos, 1.0));
    Normal = nor_model * aNormal;  
    gl_Position = projection * view * model * vec4(aPos, 1.0);
}