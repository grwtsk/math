# Variant Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34cd73bb01a5e8d63de788fbe6ffdc0f02e363e8` · SHA-256 `349b1bcebb0866df5423849a61d36583901ae227172b39385d7c79a7973b24ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace NoeoueueHodgeGate

inductive Variant where
  | rationalProjective
  | integralProjective
  | rationalKahler
  | originalGeneralized
  | tateArithmetic
  | motivatedCycle
  deriving DecidableEq, Repr

inductive Stage where
  | hc0Scope
  | hc1ProjectiveCarrier
  | hc2PrefixToHodge
  | hc3ChowExhaustion
  | hc4CycleClassNaturality
  | hc5aFixedClass
  | hc5bFixedVariety
  | hc5cUniversal
  deriving DecidableEq, Repr

inductive Status where
  | scopeCertified
  | projectiveCarrierCertified
  | rationalHodgeClassCertified
  | cycleCandidateOnly
  | fixedClassCycleMatched
  | prefixComparisonFaithful
  | fixedVarietySurjective
  | universalRationalProjectiveHc
  | refuted
  | unknown
  | unavailable
  | invalid
  deriving DecidableEq, Repr

def hodgeConjectureStatus : Status → Bool
  | .fixedClassCycleMatched => true
  | .fixedVarietySurjective => true
  | .universalRationalProjectiveHc => true
  | .refuted => true
  | _ => false

def variantAllowsStatus (variant : Variant) (status : Status) : Bool :=
  !hodgeConjectureStatus status || variant == .rationalProjective

example : variantAllowsStatus .integralProjective .universalRationalProjectiveHc = false := by
  decide

example : variantAllowsStatus .rationalProjective .fixedClassCycleMatched = true := by
  decide

end NoeoueueHodgeGate
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56eec5d182d61f76466b2bf54d971f53e4c60e8f84eb37ceee8b77cc4152ba62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Variant/Variant349b1bcebb0866df5423849a61d36583901ae227172b39385d7c79a7973b24ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
