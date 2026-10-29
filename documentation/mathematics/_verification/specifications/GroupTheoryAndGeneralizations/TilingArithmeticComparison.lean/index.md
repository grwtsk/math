# Verification target: Tiling Arithmetic Comparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "345f0a7e2ef8b273809e7f431a29ade71833481c",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `345f0a7e2ef8b273809e7f431a29ade71833481c`.

Source path: `GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.Comparison` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Assembly.Interface` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Composition` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Datum](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/datum.md) | 40 | `declaration-track:02d1c7c52cd7824a6d14e3eb24b41a8c984c12adad29d658130af0124bd8fd49` |
| 2 | `def` | [cubicalSpec](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/cubicalspec.md) | 107 | `declaration-track:7987762de4a623f023c644511c1b17dfb32dffa483e9231cc664752e897a1506` |
| 3 | `def` | [cubicalCanonical](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/cubicalcanonical.md) | 112 | `declaration-track:8a7fb611c518ee22aafe8cc6f2826d61ffd9f089e8ce96c0e5d39b1759a01b4f` |
| 4 | `def` | [assemblyDatum](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/assemblydatum.md) | 119 | `declaration-track:f72bd894345323c33c1b3a61dcf0d8b9e35b2d8bed4ea11d80b87825b1537dc1` |
| 5 | `def` | [assemblyCanonical](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/assemblycanonical.md) | 127 | `declaration-track:44386fc6c6f68441327d9520636e8105aeaeed4e0ed79dfbf0e306a35864496f` |
| 6 | `def` | [realizationDatum](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/realizationdatum.md) | 134 | `declaration-track:1cdad12f4249b8e282447aadcaab160bfb9deb34b3f6920807f21e171c031a4a` |
| 7 | `def` | [localizationChange](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/localizationchange.md) | 142 | `declaration-track:f4c33c16bc568cc999d29ed7bd4b45f3631f2a236c23d114740bf1a87677f646` |
| 8 | `def` | [etaleDatum](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/etaledatum.md) | 149 | `declaration-track:ed821564edf22db817720cb7c3d068518bcfec814a8e91f3a3287949d5622c03` |
| 9 | `def` | [etaleCanonical](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/etalecanonical.md) | 163 | `declaration-track:17329319b2bc758a5f129298b6f950e35b51510c4820847206ed34a187620386` |
| 10 | `def` | [cubicalCertified](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/cubicalcertified.md) | 176 | `declaration-track:3f5be1f56e1935d449c38e8dac4e9454a22fa2d50321b6d84544ef28a26d4f1d` |
| 11 | `def` | [assemblyCertified](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/assemblycertified.md) | 190 | `declaration-track:bc3350efd293ec34ff9ae45a1385d8533f645bb806896758ff4d0000481e4064` |
| 12 | `def` | [realizationCertified](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/realizationcertified.md) | 197 | `declaration-track:5c6746c2ad25a9344e13241f82fd7e0a9d697d50f1a1061029716a7a32338307` |
| 13 | `def` | [etaleCertified](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/etalecertified.md) | 204 | `declaration-track:538fdb426ee12a0f6cd3e020a6e515f9af3f172146f3018004e5c36b8ea25446` |
| 14 | `def` | [integralComposite](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/integralcomposite.md) | 211 | `declaration-track:6592557c696d0050a7d392c098c5fa6006843a54b79d3598ace4ad2db394056c` |
| 15 | `def` | [composite](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/composite.md) | 223 | `declaration-track:036b1d436bdad401ce98cfeea768301b441b5ca6e2d825e4930b2eca81cf9da9` |
| 16 | `theorem` | [composite_apply](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/composite-apply.md) | 230 | `result-track:2b0644703eec0353274dd704fa3ade9c7e85e06f92497e03845ccfbd270a6308` |
| 17 | `theorem` | [composite_assumptions](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/composite-assumptions.md) | 240 | `result-track:520918cad37001974f08348942293966e4bbc750a4dd7ba3ceb9bf534999f5cc` |
| 18 | `theorem` | [composite_coefficientSource](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/composite-coefficientsource.md) | 248 | `result-track:7a36b14ccaaa907e84ddb3fcad769fa35b8086a27825dc5864970b28886adbc8` |
| 19 | `theorem` | [composite_coefficientTarget](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/composite-coefficienttarget.md) | 254 | `result-track:344c677feaf1435f3a4e7fe6b5ad8e3f0164fef088a0f466bf774cc821505c9f` |
| 20 | `theorem` | [composite_scope](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/composite-scope.md) | 259 | `result-track:5e81cfff7b999900ba1992e62eae6d4e5706cd72db84cec4e25e2f9112937f27` |
| 21 | `theorem` | [composite_scope_ne_framework](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/composite-scope-ne-framework.md) | 271 | `result-track:a52718a60a4b6400b3aac5c6b2f3e7be08057e9b61590a5f3bd20b0516068614` |
| 22 | `def` | [representedComposite](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/representedcomposite.md) | 286 | `declaration-track:5067253fa36aa8c999eb9bcd4ebb9a88e3c351751d925b5e62b76dd175ad7e82` |
| 23 | `theorem` | [representedComposite_apply](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/representedcomposite-apply.md) | 298 | `result-track:9ef2fe14a4b1666210166c668a9ebb91e60f7bd291cc418d9c0d7ccfa04d9639` |
| 24 | `def` | [unitRepresentation](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/unitrepresentation.md) | 316 | `declaration-track:ad73b4897b8ad3523cebefbcff4021450a1ceaccb88b4c9456293f83ae3f649f` |
| 25 | `def` | [unitGroupRingMap](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/unitgroupringmap.md) | 320 | `declaration-track:8d6629b6d3426a52d24d4a1f676d8e142d7d1e9198e554d7ea3d4e80de9eb56e` |
| 26 | `def` | [representation](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/representation.md) | 325 | `declaration-track:596dfb97ac008e8b895570055e93b29225b6ea2d9d46de62aa12685b4d4fa4ba` |
| 27 | `def` | [localization](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/localization.md) | 338 | `declaration-track:e40da333fe82f7581f006a1ee0d5133b3d0f943bd1f078d0cde188839bcede48` |
| 28 | `def` | [datum](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/datum-source-edition-2.md) | 346 | `declaration-track:ce650f8d1dcc18d3464197d3c14ffcaba92a607b7bd4d2c53164064c3f11209d` |
| 29 | `theorem` | [assembly_isomorphismClaim](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/assembly-isomorphismclaim.md) | 383 | `result-track:e36968a6960c74f1dd06ead587c7222c9b94cc86ed80690a1f718b837c6e1e02` |
| 30 | `theorem` | [composite_assumptions_iff](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/composite-assumptions-iff.md) | 390 | `result-track:ed0a831e82ece52765d8673c447ae80be0a0948584edb5ef79c9412ee52615af` |
| 31 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/example-source-edition-3.md) | 404 | `declaration-track:ea45bc9d36ac8d6c5cd81c90561bd0a64c8a7fb883d0a8158b71321adaf426b7` |
| 32 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/example-source-edition-5.md) | 410 | `declaration-track:fc02abf870915bcd1955d6912f14e73efe7a8e9b25956862cb7fe20aade38b51` |
| 33 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/example-source-edition-2.md) | 416 | `declaration-track:b038687fc36ce1468ba507496c07acafb5e88958b146deeae5b2697691d20be0` |
| 34 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/example.md) | 428 | `declaration-track:4d35a2f8dbdcb83a2e642e3f401189f2c25720c46fcc0179836bc61eb5ef8b9f` |
| 35 | `def` | [representationFor](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/representationfor.md) | 434 | `declaration-track:c78d5bfe9fabe9c1b2797b58377087ad720d5eddfd48eeff0af75efbdf7abbe0` |
| 36 | `def` | [represented](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/represented.md) | 438 | `declaration-track:7a5911dccde923229295195c93f15534ee032cb913e1f95fd6b3ce6b824507a2` |
| 37 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TilingArithmeticComparison.lean/declarations/example-source-edition-4.md) | 444 | `declaration-track:f76c2bad52c995963e23570ef7af740dc32d559534b49cc4fc7d41012950504a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d3f68938bad39c6aecdea9c5c224328a74c302218d6d908a84368c5f0037cf9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/TilingArithmeticComparison/Variant8d80c516694591627066ced9fe9f5d2175c1b8e9c2cecd896c7486ee0e71e1f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
