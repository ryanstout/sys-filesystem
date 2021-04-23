# frozen_string_literal: true

module Sys
  class Filesystem
    module Constants
      MAXPATH = 260

      CASE_SENSITIVE_SEARCH      = 0x00000001
      CASE_PRESERVED_NAMES       = 0x00000002
      UNICODE_ON_DISK            = 0x00000004
      PERSISTENT_ACLS            = 0x00000008
      FILE_COMPRESSION           = 0x00000010
      VOLUME_QUOTAS              = 0x00000020
      SUPPORTS_SPARSE_FILES      = 0x00000040
      SUPPORTS_REPARSE_POINTS    = 0x00000080
      SUPPORTS_REMOTE_STORAGE    = 0x00000100
      VOLUME_IS_COMPRESSED       = 0x00008000
      SUPPORTS_OBJECT_IDS        = 0x00010000
      SUPPORTS_ENCRYPTION        = 0x00020000
      NAMED_STREAMS              = 0x00040000
      READ_ONLY_VOLUME           = 0x00080000
    end
  end
end
