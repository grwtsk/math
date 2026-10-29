# Nomatch Source — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c72aa78211d8cd345dfd4e2cc5ee30aa4f564f91` · SHA-256 `8cfdcc0cbca1a24e2d8d26790544074ccd5064c05958b5862f9207d3cb14e337`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit true
example : False → α := nofun
example : False → α := by nofun
example : ¬ False := nofun
example : ¬ False := by nofun
example : ¬ ¬ 0 = 0 := nofun

example (h : False) : α := nomatch h

example (h : Nat → False) : Nat := nomatch h 1

def ComplicatedEmpty : Bool → Type
  | false => Empty
  | true => PEmpty

example (h : ComplicatedEmpty b) : α := nomatch b, h
example (h : Nat → ComplicatedEmpty b) : α := nomatch b, h 1
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5bb43e09e85d91be7299779eca7fa260b5d2353a17dcdcba3242482f294c2c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NoMatch/Variant8cfdcc0cbca1a24e2d8d26790544074ccd5064c05958b5862f9207d3cb14e337.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
