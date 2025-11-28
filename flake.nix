{
  description = "DevShell for FOS.";

  outputs = {self}: {
    templates = {
      default = {
        path = ./default;
        description = "Default DevShell Template";
      };
      c-cpp = {
        path = ./c-cpp;
        description = "C/C++";
      };
      nodejs = {
        path = ./nodejs;
        description = "Node.js DevShell Template";
      };
      frontend = {
        path = ./frontend;
        description = "Front End Template";
      };
      react-vite = {
        path = ./react-vite;
        description = "React + Vite";
      };
      typescript = {
        path = ./typescript;
        description = "TypeScript";
      };
      nextjs = {
        path = ./nextjs;
        description = "Next.JS";
      };
      svg = {
        path = ./svg;
        description = "SVG";
      };
      zola = {
        path = ./zola;
        description = "Zola";
      };
      java = {
        path = ./java;
        description = "Java";
      };
      hugo = {
        path = ./hugo;
        description = "Hugo";
      };
      mysql = {
        path = ./mysql;
        description = "MySQL";
      };
      rust = {
        path = ./rust;
        description = "Rust";
      };
      go = {
        path = ./go;
        description = "Go";
      };
      sui = {
        path = ./sui;
        description = "SUI";
      };
    };
  };
}
