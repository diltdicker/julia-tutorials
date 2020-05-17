module HelloWorld

    export oraora

    """
        oraora([count])
    Prints 2 'ORA's to the screen count number of times. count defaults to 5

    # Examples

    ```julia-repl
    oraora(2)
    ORA
    ORA
    ORA
    ORA
    ```
    """
    function oraora(count::Int = 5)
        for _ in range(1, stop=count)
            println("ORA")
            println("ORA")
        end
    end

end # module
