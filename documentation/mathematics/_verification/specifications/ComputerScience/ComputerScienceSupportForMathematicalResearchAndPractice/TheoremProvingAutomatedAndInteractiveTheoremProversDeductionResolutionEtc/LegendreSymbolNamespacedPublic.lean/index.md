# Verification target: Legendre Symbol Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9e3f9daf6cfafa30271e06d55a9ae801262405b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LegendreSymbol/Variant44c5d837ac960d91d10dffd4b9e8e3e44a86948013ac10be41aef9c5fb22ce92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9e3f9daf6cfafa30271e06d55a9ae801262405b`.

Source path: `GRWTSK/NumberTheory/LegendreSymbol/Variant44c5d837ac960d91d10dffd4b9e8e3e44a86948013ac10be41aef9c5fb22ce92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LegendreSymbol/Variant44c5d837ac960d91d10dffd4b9e8e3e44a86948013ac10be41aef9c5fb22ce92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiSymNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat.md) | 65 | `declaration-track:fd10dca2a43b346c7173106eb3cb38f0e0dfe60aeeeeae185bd5d42b04e0bf5f` |
| 2 | `theorem` | [jacobiSymNat.zero_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-zero-right.md) | 77 | `result-track:c763e022fade78245b1176f80b139d4c949f1e5cf99254a4b4d2f47ea08e2d2d` |
| 3 | `theorem` | [jacobiSymNat.one_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-one-right.md) | 80 | `result-track:b70da0f423ec16b2e32bbc07cb33837f1ccb8c556f65dda02cf53b77a97544a2` |
| 4 | `theorem` | [jacobiSymNat.zero_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-zero-left.md) | 83 | `result-track:68c3610c560d142592e275235c89a93a1a1860c736d4520711468e147753b308` |
| 5 | `theorem` | [jacobiSymNat.one_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-one-left.md) | 91 | `result-track:df8a7da36c03c112ad7d8a72682a50896341fd3fddc1443f3bae552c63298e87` |
| 6 | `theorem` | [LegendreSym.to_jacobiSym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/legendresym-to-jacobisym.md) | 95 | `result-track:a5bc7e48170cf392ee66caa958c8ba2364959f804ba91918a25c23549ca72c1c` |
| 7 | `theorem` | [JacobiSym.mod_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisym-mod-left.md) | 100 | `result-track:40d3ec2c3e7dd318047d1b8cfaba9910e44a508c03ccc23784f2cb46bbfc207d` |
| 8 | `theorem` | [jacobiSymNat.mod_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-mod-left.md) | 104 | `result-track:bb68797b8b2c47f5bd604c85fc69cf90bf8c68e1101b23cae5e2ef2ee2b75d8b` |
| 9 | `theorem` | [jacobiSymNat.even_even](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-even-even.md) | 109 | `result-track:f2e4de35d94b2c04f0f744ac377b4ee7d6a94dcd33a96724198f30f958baa1d8` |
| 10 | `theorem` | [jacobiSymNat.odd_even](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-odd-even.md) | 120 | `result-track:a35406a17eb9ce9abf22fdc2522a971a79665e5388750dc996a271c9ccfbc15a` |
| 11 | `theorem` | [jacobiSymNat.double_even](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-double-even.md) | 133 | `result-track:19812314230347d58c6a5ff08e451ae1f86518133ea125bcf6b6a3cb9a63715a` |
| 12 | `theorem` | [jacobiSymNat.even_odd₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-even-odd.md) | 141 | `result-track:08aab35c4e179113ce01e8f414699cc14f8cfe6473c3ffd82e636b339243e80f` |
| 13 | `theorem` | [jacobiSymNat.even_odd₇](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-even-odd-source-edition-4.md) | 147 | `result-track:d88e9534be3f9b9e094bbd74f9ff47dcff7813bafb558f8265e65860c76758ab` |
| 14 | `theorem` | [jacobiSymNat.even_odd₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-even-odd-source-edition-2.md) | 153 | `result-track:1cd0f87cff5f2010c1fe6756dddd3f6d3767c2897241a35761ef9ed5191a4f21` |
| 15 | `theorem` | [jacobiSymNat.even_odd₅](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-even-odd-source-edition-3.md) | 159 | `result-track:9c2638cefcbca8b4dcbc96440390a64ee072d6a2674c2e6f56618014bb409853` |
| 16 | `theorem` | [jacobiSymNat.qr₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-qr-source-edition-3.md) | 166 | `result-track:f8137475d84c51fcbd57fb083b76c1e843c3366504e80721ebc3be2f11778063` |
| 17 | `theorem` | [jacobiSymNat.qr₁_mod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-qr-mod.md) | 170 | `result-track:34eee4d66da2c4a44845d4f8bc9cca6ff3afe6cb8ed026e8ee9cb8f895ddecf1` |
| 18 | `theorem` | [jacobiSymNat.qr₁'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-qr-source-edition-2.md) | 174 | `result-track:4ff880c1cf0e0a16355a1935ea96c80869c3a05b7136b939e7843fdabda49751` |
| 19 | `theorem` | [jacobiSymNat.qr₁'_mod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-qr-mod-source-edition-2.md) | 178 | `result-track:6809167e009f13b1e5c58faca1aa475dcc1faf7a72da9199f229049e75c97b55` |
| 20 | `theorem` | [jacobiSymNat.qr₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-qr.md) | 182 | `result-track:3fa44ad243432290c555a221316b26d294184b788c8583f22e2967bd3ee73afd` |
| 21 | `theorem` | [jacobiSymNat.qr₃_mod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/jacobisymnat-qr-mod-source-edition-3.md) | 186 | `result-track:c0f006f472edf87051d8380c1f5aa02449ab87b89a467d2d56186254c37ebd6f` |
| 22 | `theorem` | [isInt_jacobiSym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/isint-jacobisym.md) | 190 | `result-track:57470ab9aafdfebd202bfd105674cc542748d4b400dadba04d2771666abbbd83` |
| 23 | `theorem` | [isInt_jacobiSymNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/isint-jacobisymnat.md) | 194 | `result-track:1d1dc8a583fc67d6b63bc295471613eda8c09391de5ff2f5d766ce1b9c34a07d` |
| 24 | `def` | [mkRawIntLit'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/mkrawintlit.md) | 220 | `declaration-track:d2adebf8d795663ad3aa2a48d35af6271c4e23cf7819ee2658f506a915a91cb9` |
| 25 | `def` | [proveJacobiSymOdd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/provejacobisymodd.md) | 226 | `declaration-track:c81fe72751a771c27e79530e3f6ca215ef39da4442ce0b1fb9b68e454d33e6de` |
| 26 | `def` | [proveJacobiSymNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/provejacobisymnat.md) | 297 | `declaration-track:ca198192ef21db84196a9b07ff9137725ffc03f72f10d0c135fcb0d7de4e842e` |
| 27 | `def` | [proveJacobiSym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/provejacobisym.md) | 342 | `declaration-track:ddee14a07c6d0dfa4db3c5dc82f4ed721d44fc17a6f370fb525217003f849d94` |
| 28 | `def` | [evalJacobiSym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/evaljacobisym.md) | 380 | `declaration-track:2198813be22facdc4066a38af39e10a4320271dfe098d9d42819bc0c16481248` |
| 29 | `def` | [evalJacobiSymNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/evaljacobisymnat.md) | 391 | `declaration-track:9fcc2b16790fe1aea202ea7186f2fe43bd3c4b64697cfbdafb54ea503d58f0d8` |
| 30 | `def` | [evalLegendreSym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolNamespacedPublic.lean/declarations/evallegendresym.md) | 402 | `declaration-track:d53de6e74022564fa245c89eb9702bc21e3eb53ebc9940d02c5d7f48e7413b8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=296e5146aa5b3a68343edb9d422680c7f27da32a14eceff302fcb7d08fa46a04 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/LegendreSymbol/Variant44c5d837ac960d91d10dffd4b9e8e3e44a86948013ac10be41aef9c5fb22ce92.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant44c5d837ac960d91d10dffd4b9e8e3e44a86948013ac10be41aef9c5fb22ce92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
