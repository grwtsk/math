# Verification target: Legendre Symbol Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f6074dc1143b2b3168bc55b2c3682cd701939fc",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f6074dc1143b2b3168bc55b2c3682cd701939fc`.

Source path: `GRWTSK/NumberTheory/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean.json)

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
| 1 | `def` | [jacobiSymNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat.md) | 57 | `declaration-track:0a6fc49809e82a434782bc83e2cb123f17d35bd759ff7d69e0e2be0bd8c827c1` |
| 2 | `theorem` | [jacobiSymNat.zero_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-zero-right.md) | 69 | `result-track:6cac47ef7b85f3206f81be11ba5d1325cf0fdcca464834c59f28a18715c75e1f` |
| 3 | `theorem` | [jacobiSymNat.one_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-one-right.md) | 72 | `result-track:2ceeb5f2c960d85b5ec1053094a3c049a12e267d2b150e442d4c9bea236ffca7` |
| 4 | `theorem` | [jacobiSymNat.zero_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-zero-left.md) | 75 | `result-track:353e95eae43b46d91fd848fbad8e1db25b704321abfaa3d06e1817390e1b8ebc` |
| 5 | `theorem` | [jacobiSymNat.one_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-one-left.md) | 83 | `result-track:963b0bf97240de493077a3a975f4bdb479eb554e36a1a17790c9784ceac7ac07` |
| 6 | `theorem` | [LegendreSym.to_jacobiSym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/legendresym-to-jacobisym.md) | 87 | `result-track:615f6c05af571714f613cbeb1abbad2f4353587eb650230240d3d5fad3e09cfe` |
| 7 | `theorem` | [JacobiSym.mod_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisym-mod-left.md) | 92 | `result-track:3be6e4690d246fe082e5502d71be0261d0be89d1190d1241a6b429f603887aa7` |
| 8 | `theorem` | [jacobiSymNat.mod_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-mod-left.md) | 96 | `result-track:11b57e596e80d2ba9674fac07498d56318db18850db5a2998e668e4a36abdcdb` |
| 9 | `theorem` | [jacobiSymNat.even_even](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-even-even.md) | 101 | `result-track:74aaa28cf1575499e3eee310e9d75b90322f713291753a9022084293a9549414` |
| 10 | `theorem` | [jacobiSymNat.odd_even](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-odd-even.md) | 112 | `result-track:bfe1ee5c8be5c04cc7cd06b42c5faaf7da463c24b92f7cb5ee18a828da0be86f` |
| 11 | `theorem` | [jacobiSymNat.double_even](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-double-even.md) | 125 | `result-track:1d4fbef83ea6d3882870cc4a56bc68e87d6b56802eeb5bf9a62fa36b1641ba4c` |
| 12 | `theorem` | [jacobiSymNat.even_odd₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-even-odd.md) | 133 | `result-track:234abc2c6d2cf10478429ad5f8f154dce3626da10b065c4caa08903c8caef8bb` |
| 13 | `theorem` | [jacobiSymNat.even_odd₇](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-even-odd-source-edition-4.md) | 139 | `result-track:d366875ade53bb53e190d144c65259bfd910e342ffa038e1c0aefcb8845ea5e9` |
| 14 | `theorem` | [jacobiSymNat.even_odd₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-even-odd-source-edition-2.md) | 145 | `result-track:2b7e3ff8760ee0d3f2e987b869a6b6f71bd0055e21a5aca6551c80cf78bd450e` |
| 15 | `theorem` | [jacobiSymNat.even_odd₅](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-even-odd-source-edition-3.md) | 151 | `result-track:72178436f65473026c91f15e2e7bb8bf61657430e7814c24edb305a2ffb1e276` |
| 16 | `theorem` | [jacobiSymNat.qr₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-qr.md) | 158 | `result-track:00157e0d2fd31424e337f1b3ca2ae4e64ed754e01548ea6e085cf3b59148fb57` |
| 17 | `theorem` | [jacobiSymNat.qr₁_mod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-qr-mod.md) | 162 | `result-track:5f18b374ba29e44af64912188c7034c67f1111b8007fa0f0b7b6f5760a994629` |
| 18 | `theorem` | [jacobiSymNat.qr₁'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-qr-source-edition-2.md) | 166 | `result-track:4a253506844daad52ffa7f374f0e7b5c1187fea6a409ad2d1f771d2beda4e371` |
| 19 | `theorem` | [jacobiSymNat.qr₁'_mod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-qr-mod-source-edition-2.md) | 170 | `result-track:7568fea9a9b877b58341544de7c324bcb2639d267dc4698c967fc2f426867394` |
| 20 | `theorem` | [jacobiSymNat.qr₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-qr-source-edition-3.md) | 174 | `result-track:9f6f840dbaffa5c9b983344b0ff5d4f0d06e4ca8216640aec319d87c4fc9acb1` |
| 21 | `theorem` | [jacobiSymNat.qr₃_mod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/jacobisymnat-qr-mod-source-edition-3.md) | 178 | `result-track:8b9e865292636e039996da57f85eddde547c438e8cfc0d8e1ae6af76cecd7b66` |
| 22 | `theorem` | [isInt_jacobiSym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/isint-jacobisym.md) | 182 | `result-track:9aa1928d6ee705f6baf0160da42614e7ae9ccb1336300e8dee6fcacd2817ef8d` |
| 23 | `theorem` | [isInt_jacobiSymNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/isint-jacobisymnat.md) | 186 | `result-track:54c9205c1e895fa7c480cb8f602e3c4af8d3b41c788da8f2ac6344658f001b1c` |
| 24 | `def` | [mkRawIntLit'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/mkrawintlit.md) | 212 | `declaration-track:d49ce7ba0c28125170ef7ff05486cbe7028be0e3eca91b305714d56267e40451` |
| 25 | `def` | [proveJacobiSymOdd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/provejacobisymodd.md) | 218 | `declaration-track:d83fbb49ac33ed2d1c38d86db0daf36c675f811f5bc985f9b228c46b11d2c4d5` |
| 26 | `def` | [proveJacobiSymNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/provejacobisymnat.md) | 289 | `declaration-track:ddb0d44e32639ad18e6a98f529c0b26d7bbe05d96ab465c0484362fc45ede127` |
| 27 | `def` | [proveJacobiSym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/provejacobisym.md) | 334 | `declaration-track:1db5564b6a698f58f5faffe0e5b6c7087df8286e79f1b491af951115f68244ac` |
| 28 | `def` | [evalJacobiSym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/evaljacobisym.md) | 372 | `declaration-track:5aa4e121d45d4c13dd6e82965e214b6ffd99e784c99e025c1a4cdd3ddf55ea84` |
| 29 | `def` | [evalJacobiSymNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/evaljacobisymnat.md) | 383 | `declaration-track:cbdc44fd22a9b2ec4afef818a620b842c75e6d086ae98bda04a37a3fd8753f36` |
| 30 | `def` | [evalLegendreSym](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LegendreSymbolPublic.lean/declarations/evallegendresym.md) | 394 | `declaration-track:5b06f6833597fe899781934f04bfccfcbe056cabc63889aabadab2d84b378ce9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48220eac3ff4e8547a5b38bd5951c69735f997c953abb256fe04ace3b2d46cc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant20a853ff2cb10733421872bcb76342d54eb7ca8b03857389b4ff2d6248c53b2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
