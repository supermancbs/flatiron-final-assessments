function palidrom(string){
  i = string.length-1
  j = 0
  while (i >=0){
    if (string[i]!==string[j]){
      return false
    }
    i--
    j++
  }
  return true
}
