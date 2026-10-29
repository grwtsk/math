# Verification target: Bump Function Finite Dimension Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84943de0407cf170a3b2f8d3006845709048b006",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84943de0407cf170a3b2f8d3006845709048b006`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_contDiff_tsupport_subset](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/exists-contdiff-tsupport-subset.md) | 53 | `result-track:42a3cf1c91c6a120c1f7badaa0cf2d412a9a2632dd5a55561afa77d2c0274c70` |
| 2 | `theorem` | [IsOpen.exists_contDiff_support_eq](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/isopen-exists-contdiff-support-eq.md) | 87 | `result-track:c32fbdf9809017960a0f5edb6f94701701a5f54443947a8f250923643bb7a177` |
| 3 | `def` | [φ](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/anonymous.md) | 211 | `declaration-track:3b6538571fd50ff123964139d63c8ef82c3e037108ff96111a808a49f478a69e` |
| 4 | `theorem` | [u_exists](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/u-exists.md) | 220 | `result-track:7a2d683bfd8eac7bc4e803d01a3a18604a171d08c582016c60a3b6dd148e6013` |
| 5 | `def` | [u](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/u.md) | 252 | `declaration-track:eb9ed2552844ad806ae235cab6ae7d940fc950ec2e0cc0bf5adea6cb86656953` |
| 6 | `theorem` | [u_smooth](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/u-smooth.md) | 255 | `result-track:17d22f587f8a18f9f6aa135061dc1b0e5b7a664af121f7af2ad6c0a5fc858b81` |
| 7 | `theorem` | [u_continuous](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/u-continuous.md) | 258 | `result-track:d4d9a604f88a57bf33c11e204c442a42c479ee04f07330f254e9a3913463dfe1` |
| 8 | `theorem` | [u_support](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/u-support.md) | 261 | `result-track:60701667d7a681e9e300af2a75f102b522faa0f6175a33f6743aea2572b410fc` |
| 9 | `theorem` | [u_compact_support](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/u-compact-support.md) | 264 | `result-track:23c75d67d54c2609f66388475f0640c194f579c8b154547190443fb710684d42` |
| 10 | `theorem` | [u_nonneg](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/u-nonneg.md) | 270 | `result-track:beadb9a92d2ede5b9a07f0de10fdefe0f0861202c351ea835326d29ea27348e9` |
| 11 | `theorem` | [u_le_one](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/u-le-one.md) | 273 | `result-track:1bb28382232c02d83a53d49a1354e52e399c8add5c371165f80c27207f9cbd16` |
| 12 | `theorem` | [u_neg](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/u-neg.md) | 276 | `result-track:67cacd6ab279ffce6174feae559521df4de1a626927b35ee370e97a0eaef30d9` |
| 13 | `theorem` | [u_int_pos](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/u-int-pos.md) | 284 | `result-track:6122696fcbe857ae772b855ab9c298fbc0aac21c342366cfa16a05c4633ab386` |
| 14 | `def` | [w](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/w.md) | 291 | `declaration-track:283618b5fc793da5c92fd11c334b712667d1f362c73e6f77aea26b6bee9c6ab9` |
| 15 | `theorem` | [w_def](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/w-def.md) | 294 | `result-track:e27d391454bbb9455286eb73556f4f7eb08d61899ae2dfe83e7ef77aad2e130f` |
| 16 | `theorem` | [w_nonneg](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/w-nonneg.md) | 298 | `result-track:3da8bf8e606452d0e3463b07852b61aebf90ecf9de8bbb93f3ba2727aebab1a3` |
| 17 | `theorem` | [w_mul_φ_nonneg](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/w-mul-nonneg.md) | 305 | `result-track:4fb9cfc60ac500bcc030ac81c5d413930e32ef92b0a5bacce9a18a867331cf4d` |
| 18 | `theorem` | [w_integral](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/w-integral.md) | 312 | `result-track:41c896b11547210504ac994815c3d4e719433e67690ac8bf9c547487f6b30a7b` |
| 19 | `theorem` | [w_support](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/w-support.md) | 317 | `result-track:ab9405cd75a761e89801826dea5e126be658915c8294f873a8e04329ac94bf2f` |
| 20 | `theorem` | [w_compact_support](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/w-compact-support.md) | 327 | `result-track:769a436666af091ec244ca2d29fb37e1ad71c2e2f86eeab5e95fceef0b57e82d` |
| 21 | `def` | [y](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/y.md) | 337 | `declaration-track:96f77e0b34746f69c269a6dad357c5d6518f3871968d74e2599e11549bbee476` |
| 22 | `theorem` | [y_neg](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/y-neg.md) | 340 | `result-track:19f6d0f643edfe28650a6ea033bbdededf404b41b2815edff6743417079b953e` |
| 23 | `theorem` | [y_eq_one_of_mem_closedBall](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/y-eq-one-of-mem-closedball.md) | 347 | `result-track:0f818de49c81f6c8516aac7920fa4c0d64ac09d5b13136de0ca089c1d4690921` |
| 24 | `theorem` | [y_eq_zero_of_notMem_ball](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/y-eq-zero-of-notmem-ball.md) | 365 | `result-track:edc873e13bb3b5333536c6751f223c77fb30f3f8fe94356ca5a1ac69e88d42cc` |
| 25 | `theorem` | [y_nonneg](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/y-nonneg.md) | 382 | `result-track:584c98b4e8479cfa1ec867b1f3da5955963e0371d87fa0a98e2f6e536d5496e7` |
| 26 | `theorem` | [y_le_one](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/y-le-one.md) | 385 | `result-track:7197cfb322e398b07852b91fddeed48b9e04c2938c8db1cc4fc02818feaafafe` |
| 27 | `theorem` | [y_pos_of_mem_ball](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/y-pos-of-mem-ball.md) | 397 | `result-track:1bc26dbadc57388df0c252382505074c3dce2efcb3a252b1cae877ff268cad3d` |
| 28 | `theorem` | [y_smooth](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/y-smooth.md) | 436 | `result-track:744791170dd86514ba0c10e0ae99304b1b5d123e4d3c2c7c734f109a66967b84` |
| 29 | `theorem` | [y_support](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/y-support.md) | 463 | `result-track:d4375553d989f029acc08401053714eb9505360d717dbf29a02b40ba2e337ca0` |
| 30 | `instance` | [(anonymous)](../../../../RealFunctions/BumpFunctionFiniteDimensionNamespacedPublic.lean/declarations/instance.md) | 471 | `declaration-track:c627490ba5fc8f3dd2e35b3bcc52effd259a96650bb9ec84b60d22d43643dfe3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc4527104729982f7905201c4dff0fc0e31d4dc2d080fc4c0989e03f4f7b20e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant6c7ddc0e6c0e414d0d1da4b792e5aabbe00714aa65d1689c813aa488dddaa699.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
