module ConstructionsHelper
   def form_title
      @construction.new_record? ? "Nuevo Post" : "Editar Post"
   end

   def form_button
      @construction.new_record? ? "CREAR" : "EDITAR"
   end

   def form_button_class
      @construction.new_record? ? "success" : "warning"
   end
end
