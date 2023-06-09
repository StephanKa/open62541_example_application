FUNCTION(GET_GIT_HASH)
    EXECUTE_PROCESS(
            COMMAND git log -1 --format=%h
            WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}
            OUTPUT_VARIABLE HASH
            OUTPUT_STRIP_TRAILING_WHITESPACE
    )

    SET(GIT_HASH ${HASH} PARENT_SCOPE)
ENDFUNCTION()
