# Verification target: Nat Fib Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1655a3b1dfcdccc1dc5ee06f9f89d438034186a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1f571e0b3cf565130c74b57777332eb07659bd11072770b019d9a546074c53fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1655a3b1dfcdccc1dc5ee06f9f89d438034186a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1f571e0b3cf565130c74b57777332eb07659bd11072770b019d9a546074c53fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1f571e0b3cf565130c74b57777332eb07659bd11072770b019d9a546074c53fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Fib` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFibAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/declarations/isfibaux.md) | 29 | `declaration-track:2a797a32ddeb1ddfbf066e0fa20e8c557d63db817419bf30121539b7fd97d82d` |
| 2 | `theorem` | [isFibAux_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/declarations/isfibaux-zero.md) | 32 | `result-track:d4ed82c18ec69e68d0cd34fc3e04866fac1a729b39f45d314f06feaf165ee132` |
| 3 | `theorem` | [isFibAux_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/declarations/isfibaux-one.md) | 35 | `result-track:81bfa786b0076f07fd6699c8b66fdffab49b04cdf456bf369a549445b383f842` |
| 4 | `theorem` | [isFibAux_two_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/declarations/isfibaux-two-mul.md) | 38 | `result-track:b562f903dd97adaf190a3acf1510fac1d69c811ddff68eaa38016c410500c84d` |
| 5 | `theorem` | [isFibAux_two_mul_add_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/declarations/isfibaux-two-mul-add-one.md) | 44 | `result-track:d981a182da0facc5e91504b8f93fcdd966956611595d658a03833f6bacb65311` |
| 6 | `def` | [proveNatFibAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/declarations/provenatfibaux.md) | 50 | `declaration-track:718c7563c8214032088aff1aef31515a07b1bb329d2ece3ce9daadc398799fa1` |
| 7 | `theorem` | [isFibAux_two_mul_done](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/declarations/isfibaux-two-mul-done.md) | 78 | `result-track:233af1ca5832d437c962104a02e2d3a1a158a2cbab3487d16a9a0d0a73fe0049` |
| 8 | `theorem` | [isFibAux_two_mul_add_one_done](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/declarations/isfibaux-two-mul-add-one-done.md) | 82 | `result-track:0363a6481e36f8c4cadb5b5bf5956812462ccfe01301c2a55590442b91921d85` |
| 9 | `def` | [proveNatFib](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/declarations/provenatfib.md) | 88 | `declaration-track:d3f5036a988879280e751d521929e81e826c1d835b1117e081d836167c7e8070` |
| 10 | `theorem` | [isNat_fib](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/declarations/isnat-fib.md) | 109 | `result-track:8f85d3e5a8f66fb3abba3348b077e8c5fa201e084ef90826b13d662476907f37` |
| 11 | `def` | [evalNatFib](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatFibNamespacedEdition1.lean/declarations/evalnatfib.md) | 114 | `declaration-track:d04a64051fd1473c2338521d228dccf21bb2b8672dbb08e44e01037ba11ecddf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d32ffca3aedc5ad00cf6c4a1a9133d3a99262a49098a5562e93a9248628236e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1f571e0b3cf565130c74b57777332eb07659bd11072770b019d9a546074c53fd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1f571e0b3cf565130c74b57777332eb07659bd11072770b019d9a546074c53fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
