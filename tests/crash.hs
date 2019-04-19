import Network.Socket

main :: IO ()
main = do
  sock <- socket AF_INET Stream defaultProtocol
  setSocketOption sock ReuseAddr 1
  bind sock $ SockAddrInet 6000 $ tupleToHostAddress (127, 0, 0, 1)
  listen sock 1
  _ <- accept sock
  return ()
