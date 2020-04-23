set(LIBCLANG_SOURCE_PATH tools/libclang)
set(LIBCLANG_INCLUDE_PATH include/clang-c)
set(LIBCLANG_SOURCE_FILES
  ARCMigrate.cpp
  BuildSystem.cpp
  CIndex.cpp
  CIndexCXX.cpp
  CIndexCodeCompletion.cpp
  CIndexDiagnostic.cpp
  CIndexHigh.cpp
  CIndexInclusionStack.cpp
  CIndexUSRs.cpp
  CIndexer.cpp
  CXComment.cpp
  CXCursor.cpp
  CXIndexDataConsumer.cpp
  CXCompilationDatabase.cpp
  CXLoadedDiagnostic.cpp
  CXSourceLocation.cpp
  CXStoredDiagnostic.cpp
  CXString.cpp
  CXType.cpp
  Indexing.cpp
  FatalErrorHandler.cpp
)
set(LIBCLANG_ADDITIONAL_HEADER_FILES
  CIndexDiagnostic.h
  CIndexer.h
  CXCursor.h
  CXLoadedDiagnostic.h
  CXSourceLocation.h
  CXString.h
  CXTranslationUnit.h
  CXType.h
  Index_Internal.h
)
set(LIBCLANG_INDEX_H Index.h)

set(LIBCLANG_LINK_LIBS
  clangAST
  clangBasic
  clangDriver
  clangFrontend
  clangIndex
  clangLex
  clangSema
  clangSerialization
  clangTooling
  clangARCMigrate
  LLVMAArch64CodeGen
  LLVMAArch64AsmParser
  LLVMAArch64Desc
  LLVMAArch64Disassembler
  LLVMAArch64Info
  LLVMAArch64Utils
  LLVMAMDGPUCodeGen
  LLVMAMDGPUAsmParser
  LLVMAMDGPUDesc
  LLVMAMDGPUDisassembler
  LLVMAMDGPUInfo
  LLVMAMDGPUUtils
  LLVMARMCodeGen
  LLVMARMAsmParser
  LLVMARMDesc
  LLVMARMDisassembler
  LLVMARMInfo
  LLVMARMUtils
  LLVMBPFCodeGen
  LLVMBPFAsmParser
  LLVMBPFDesc
  LLVMBPFDisassembler
  LLVMBPFInfo
  LLVMHexagonCodeGen
  LLVMHexagonAsmParser
  LLVMHexagonDesc
  LLVMHexagonDisassembler
  LLVMHexagonInfo
  LLVMLanaiCodeGen
  LLVMLanaiAsmParser
  LLVMLanaiDesc
  LLVMLanaiDisassembler
  LLVMLanaiInfo
  LLVMMipsCodeGen
  LLVMMipsAsmParser
  LLVMMipsDesc
  LLVMMipsDisassembler
  LLVMMipsInfo
  LLVMMSP430CodeGen
  LLVMMSP430AsmParser
  LLVMMSP430Desc
  LLVMMSP430Disassembler
  LLVMMSP430Info
  LLVMNVPTXCodeGen
  LLVMNVPTXDesc
  LLVMNVPTXInfo
  LLVMPowerPCCodeGen
  LLVMPowerPCAsmParser
  LLVMPowerPCDesc
  LLVMPowerPCDisassembler
  LLVMPowerPCInfo
  LLVMRISCVCodeGen
  LLVMRISCVAsmParser
  LLVMRISCVDesc
  LLVMRISCVDisassembler
  LLVMRISCVInfo
  LLVMRISCVUtils
  LLVMSparcCodeGen
  LLVMSparcAsmParser
  LLVMSparcDesc
  LLVMSparcDisassembler
  LLVMSparcInfo
  LLVMSystemZCodeGen
  LLVMSystemZAsmParser
  LLVMSystemZDesc
  LLVMSystemZDisassembler
  LLVMSystemZInfo
  LLVMWebAssemblyCodeGen
  LLVMWebAssemblyAsmParser
  LLVMWebAssemblyDesc
  LLVMWebAssemblyDisassembler
  LLVMWebAssemblyInfo
  LLVMX86CodeGen
  LLVMX86AsmParser
  LLVMX86Desc
  LLVMX86Disassembler
  LLVMX86Info
  LLVMX86Utils
  LLVMXCoreCodeGen
  LLVMXCoreDesc
  LLVMXCoreDisassembler
  LLVMXCoreInfo
  LLVMCore
  LLVMSupport
  clangFormat
  clangToolingInclusions
  clangToolingCore
  clangFrontend
  clangDriver
  LLVMOption
  clangParse
  clangSerialization
  clangSema
  clangEdit
  clangRewrite
  clangAnalysis
  clangASTMatchers
  clangAST
  clangLex
  clangBasic
  LLVMAArch64Desc
  LLVMAArch64Info
  LLVMAArch64Utils
  LLVMMIRParser
  LLVMAMDGPUDesc
  LLVMAMDGPUInfo
  LLVMAMDGPUUtils
  LLVMARMDesc
  LLVMARMInfo
  LLVMARMUtils
  LLVMHexagonDesc
  LLVMHexagonInfo
  LLVMLanaiDesc
  LLVMLanaiInfo
  LLVMipo
  LLVMVectorize
  LLVMIRReader
  LLVMAsmParser
  LLVMInstrumentation
  LLVMLinker
  LLVMSystemZDesc
  LLVMSystemZInfo
  LLVMWebAssemblyDesc
  LLVMWebAssemblyInfo
  LLVMGlobalISel
  LLVMAsmPrinter
  LLVMDebugInfoDWARF
  LLVMSelectionDAG
  LLVMCodeGen
  LLVMScalarOpts
  LLVMAggressiveInstCombine
  LLVMInstCombine
  LLVMBitWriter
  LLVMTransformUtils
  LLVMTarget
  LLVMAnalysis
  LLVMProfileData
  LLVMTextAPI
  LLVMObject
  LLVMBitReader
  LLVMCore
  LLVMRemarks
  LLVMBitstreamReader
  LLVMMCParser
  LLVMMCDisassembler
  LLVMMC
  LLVMBinaryFormat
  LLVMDebugInfoCodeView
  LLVMDebugInfoMSF
  LLVMSupport
  LLVMCFGuard
  LLVMFrontendOpenMP
  LLVMDemangle
  )
if(MSVC)
  list(APPEND LIBCLANG_LINK_LIBS LLVMAVRCodeGen LLVMAVRAsmParser LLVMAVRDisassembler LLVMAVRDesc LLVMAVRInfo)
endif()

function(get_libclang_sources_and_headers clang_source_path clang_prebuilt_path result_sources result_headers result_required_libs)
  list(TRANSFORM LIBCLANG_SOURCE_FILES PREPEND ${clang_source_path}/${LIBCLANG_SOURCE_PATH}/ OUTPUT_VARIABLE RES)
  set(${result_sources} ${RES} PARENT_SCOPE)
  unset(RES)
  list(TRANSFORM LIBCLANG_ADDITIONAL_HEADER_FILES PREPEND ${clang_source_path}/${LIBCLANG_SOURCE_PATH}/ OUTPUT_VARIABLE RES)
  list(TRANSFORM LIBCLANG_INDEX_H PREPEND ${clang_source_path}/${LIBCLANG_INCLUDE_PATH}/ OUTPUT_VARIABLE RES1)
  list(APPEND RES ${RES1})
  set(${result_headers} ${RES} PARENT_SCOPE)
  unset(RES)
  if (NOT MSVC)
    list(TRANSFORM LIBCLANG_LINK_LIBS PREPEND ${clang_prebuilt_path}/lib/lib OUTPUT_VARIABLE RES)
    list(TRANSFORM RES APPEND .a OUTPUT_VARIABLE RES)
  else()
    list(TRANSFORM LIBCLANG_LINK_LIBS PREPEND ${clang_prebuilt_path}/lib/ OUTPUT_VARIABLE RES)
    list(TRANSFORM RES APPEND .lib OUTPUT_VARIABLE RES)
  endif()
  set(${result_required_libs} ${RES} PARENT_SCOPE)
  unset(RES)
endfunction()
