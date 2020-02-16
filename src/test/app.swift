print("hi zfx")


let data = (0...10).map { $0 }

print(data)

(11...36).map { 
  print($0)
  print(String($0 - 1, radix: $0))
  // String($0 - 1, radix: $0).uppercased() 
}