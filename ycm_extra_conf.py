def Settings( **kwargs ):
  return {
    "flags": [
        "-x",
        "c++",
        "-std=gnu++14",
        "-Iinclude",
        "-Ibuild/include",
        "-I."
    ],
  }
