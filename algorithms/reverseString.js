function reverseString(string){
  let i = string.length-1
  result = ""
  while (i >= 0) {
    result+=string[i]
    i--
  }
  return result
}
