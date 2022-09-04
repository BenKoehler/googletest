function(link_googletest target MOD)
    target_link_libraries(${target} ${MOD} ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/googletest/lib/libgtest.so)
    target_include_directories(${target} SYSTEM ${MOD} ${CMAKE_CURRENT_SOURCE_DIR}/thirdparty/googletest/include)
endfunction()
