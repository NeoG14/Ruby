#!/usr/bin/env ruby

class MegaAnfition
    attr_accessor :nombres

    # Crear el objeto
    def initialize(nombres = "Mundo")
        @nombres = nombres
    end
    #cambios
    # Decirle hola a todos
    def decir_hola
        if @nombres.nil?
            puts "..."
        elsif @nombres.respond_to?("each")
            #@nombres es una lista de algun tipo,
            # ¡asi que podemos iterar!
            @nombres.each do |nombre|
                puts "Hola #{nombre}"
            end
        else
            puts "Hola #{@nombres}"
        end
    end
    #ssda
    #decirle adios a todos
    def decir_adios
        if @nombres.nil?
            puts "..."
        elsif @nombres.respond_to?("join")
            #JUntar los elementos de la lista
            #Usando la coma como separador
            puts "Adiós #{@nombres.join(", ")}. Vuelvan pronto."
        else
            puts "Adios #{@nombres} vuelve pronto."
        end
    end

end

    if __FILE__ == $0
        ma = MegaAnfition.new
        ma.decir_hola
        ma.decir_adios

        # Cambiar el nombre a "Diego"
        ma.nombres = "Diego"
        ma.decir_hola
        ma.decir_adios

        # Cambiar el nombre a un vector de nombres
        ma.nombres = ["Alberto", "Beatriz", "Carlos",
            "David", "Ernesto"]
        ma.decir_hola
        ma.decir_adios

        # Cambiarlo a nil
        ma.nombres = nil
        ma.decir_hola
        ma.decir_adios
    end
