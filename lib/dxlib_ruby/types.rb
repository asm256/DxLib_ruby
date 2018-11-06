# frozen_string_literal: true

module DxLib
  # Functions
  module Functions
    include Fiddle::BasicTypes
    include Fiddle::Win32Types
    typealias 'ULONGLONG', 'unsigned long long'
    typealias 'LONGLONG', 'long long'
    typealias 'TCHAR', 'char' # ?
    typealias 'DWORD_PTR', 'unsigned long *'
    # 以下は適当、void*のが良いかは悩み中
    typealias 'HBITMAP', 'uintptr_t'
    typealias 'COLOR_F', 'uintptr_t'
    typealias 'VECTOR', 'uintptr_t'
    typealias 'MATRIX', 'uintptr_t'
    typealias 'VECTOR_D', 'uintptr_t'
    typealias 'MATRIX_D', 'uintptr_t'
    typealias 'FLOAT2', 'uintptr_t'
    typealias 'FLOAT4', 'uintptr_t'
    typealias 'DOUBLE4', 'uintptr_t'
    typealias 'TOUCHINPUTDATA', 'uintptr_t'
    typealias 'TOUCHINPUTPOINT', 'uintptr_t'
    typealias 'va_list', 'uintptr_t'
    typealias 'IPDATA', 'uintptr_t'
    typealias 'IPDATA_IPv6', 'uintptr_t'
    typealias 'DISPLAYMODEDATA', 'uintptr_t'
    typealias 'INT4', 'uintptr_t'
    typealias 'MATERIALPARAM', 'uintptr_t'
    typealias 'HITRESULT_LINE', 'uintptr_t'
    typealias 'HITRESULT_LINE_D', 'uintptr_t'
    typealias 'POINT', 'uintptr_t'
    typealias 'COLOR_U8', 'uintptr_t'
    typealias 'MV1_COLL_RESULT_POLY', 'uintptr_t'
    typealias 'MV1_COLL_RESULT_POLY_DIM', 'uintptr_t'
    typealias 'MV1_REF_POLYGONLIST', 'uintptr_t'
    typealias 'HICON', 'uintptr_t'
    typealias 'WNDPROC', 'uintptr_t'
    typealias 'HMODULE', 'uintptr_t'
    typealias 'HRGN', 'uintptr_t'
    typealias 'HRGN', 'uintptr_t'
    typealias 'RECT', 'uintptr_t'
  end
end
