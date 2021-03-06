module gFTL_IntegerStringMap

#if defined(_INT_DEFAULT_KIND_IS_INT32)

  use gFTL_Integer32StringMap, only: IntegerStringMap => Integer32StringMap
  use gFTL_Integer32StringMap, only: IntegerStringMapIterator => Integer32StringMapIterator

#elif defined(_INT_DEFAULT_KIND_IS_INT64)

  use gFTL_Integer64StringMap, only: IntegerStringMap => Integer64StringMap
  use gFTL_Integer64StringMap, only: IntegerStringMapIterator => Integer64StringMapIterator

#else

 
#  define _key type(integer)
#  include "types/value_deferredLengthString.inc"
#  define _map IntegerStringMap
#  define _iterator IntegerStringMapIterator
#  define _pair IntegerStringPair
#  define _alt

#  include "templates/map.inc"

#  undef _alt
#  undef _iterator
#  undef _map
#  undef _value
#  undef _key

#endif

end module gFTL_IntegerStringMap
