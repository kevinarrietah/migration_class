class ProducFinder
    attr_reader :name, store_id, page
    per_page = 20
    
    # 1. Buscar por el id de la tienda
    # 2. Si el id es nulo, debe buscar en todas las tiendas
    # 3. Buscar por el nombre del prod
    # 4. Si el nombre el nulo, retornar todos
    # 5. Cambiar la pagina de resultados

    def initializer(name= '',store_id = nil, page = 0)
        @params = name
        @store_id = store_id
        @page = page
    end

    def serch 
        scope.limit(PER_PAGE).offset(offset)
    end
    def scope
        store__scope
        product_scope
        default_scope
    end
   
    def default_scope
    end

    private
    def offset
        params[:page].to_i * PER_PAGE
    end

end