# Verification target: Simpa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8e0f3c4ace1311712260b0d33b169a426588829",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Simpa/Variantd683d27a70ae2dfb68f9b8a24df20a62c0f13ebb4238a77eef38c5823621c5ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Simpa.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Simpa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8e0f3c4ace1311712260b0d33b169a426588829`.

Source path: `GRWTSK/Algebra/GroupTheory/Simpa/Variantd683d27a70ae2dfb68f9b8a24df20a62c0f13ebb4238a77eef38c5823621c5ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Simpa/Variantd683d27a70ae2dfb68f9b8a24df20a62c0f13ebb4238a77eef38c5823621c5ba.lean.json)

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
| 1 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/example-source-edition-4.md) | 9 | `declaration-track:37f8dd5a229993750b4b51d0a3bb58dcbc3c697dfd155d81a7f9138cd31832bb` |
| 2 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/example-source-edition-3.md) | 11 | `declaration-track:17608a4344806ed5c49630f07a682e33feee43987096f98bc479ffa5fe67b3c2` |
| 3 | `def` | [foo](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/foo.md) | 13 | `declaration-track:6b6cb26d71d4e5e5f1b7b01612ffd814bff8c3b15d1647499d681e42a2014317` |
| 4 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/example-source-edition-8.md) | 23 | `declaration-track:c2ee13ba7c079a7d145c8903be894feed6e260a05bd6e766406db63766482706` |
| 5 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/example.md) | 32 | `declaration-track:1012efce5ad6efd2a1c9ea75ebb106fdb4105cf609f5ee010e181d9dcb28c465` |
| 6 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/example-source-edition-6.md) | 37 | `declaration-track:9f758c0af114dd6fbe07b8033da06ecd0521e4e3c83f8d44eb8b53059825f411` |
| 7 | `def` | [Injective](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/injective.md) | 41 | `declaration-track:b8a12407cc16b3c6b5582514be790eb2c88f97848ba8f44da3f8c46a96a07737` |
| 8 | `class` | [Inv](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/inv.md) | 45 | `declaration-track:6608126386c90ea9e09a8e6aec6bc1df48ad3df0b170a527f561bf2e1ee12f0a` |
| 9 | `class` | [Group](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/group.md) | 48 | `declaration-track:902780f118dc22a8ecfdc55bb0607374e1493cfd9d0317cfd2ec6d169f5b9601` |
| 10 | `axiom` | [div_eq_mul_inv](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/div-eq-mul-inv.md) | 52 | `declaration-track:b5ea1fd45aceff4bdf76a61fbcf928bc3f86101f48cb1dc10424356261ae286d` |
| 11 | `axiom` | [mul_left_injective](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/mul-left-injective.md) | 54 | `declaration-track:ad8e5439343458b879f1b097c5d2517d4c40efdd0b77d3487e8658915fc9103d` |
| 12 | `theorem` | [div_left_injective](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/div-left-injective.md) | 56 | `result-track:f96a1d97167f0112f2aaf1e0c0edb3f46d4ee1113aa9cd9330e6e96d81bd1c9b` |
| 13 | `theorem` | [mk.inj_iff](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/mk-inj-iff.md) | 63 | `result-track:1c5761a4d21b9f8ff2c62e70dfa45b1029f6d062a45de614a84348d4f15b3fff` |
| 14 | `theorem` | [mk.inj_left](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/mk-inj-left.md) | 66 | `result-track:91b5e60c82390e52048079ff61a939142c32ae892dd86a7fc9b52f5906c51354` |
| 15 | `theorem` | [implicit_lambda](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/implicit-lambda.md) | 72 | `result-track:6f90df2ce1238cc6c2053f8d0f173a75516b6ecf5e53cb38c8b328745237aeca` |
| 16 | `theorem` | [implicit_lambda2](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/implicit-lambda2.md) | 75 | `result-track:aea3e3676ef730b55a90e8117fafc6ff615408b256ecd843dc26699b84fa2bb4` |
| 17 | `theorem` | [no_implicit_lambda](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/no-implicit-lambda.md) | 78 | `result-track:f5e3256cefc32b847dad8921431a53c6e61c35593869c986792b3d3fc06fe390` |
| 18 | `theorem` | [thm](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/thm.md) | 82 | `result-track:e7e7adc06d5df6b6b605275d30895cf47c8daf891ef5859ba3464b083b2c0d2f` |
| 19 | `theorem` | [thm2](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/thm2.md) | 85 | `result-track:ff5acb53206bb08014c14298e868f7cf65e15cddeaaf58d6e77e9a0d6479baf8` |
| 20 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/example-source-edition-2.md) | 87 | `declaration-track:129968fca334f981af9e248d94aced45483be21c6102e13a11826d67326b4b31` |
| 21 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/example-source-edition-9.md) | 90 | `declaration-track:d1ab1fdbe5676f717f5d57fea7c6d1681cbd3b3912e589de443c1eb39703f8cd` |
| 22 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/example-source-edition-5.md) | 93 | `declaration-track:499176d900f29f9002ce39e08fdf1b2407897b13fc50f73d9b75e7b94badac3e` |
| 23 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/example-source-edition-7.md) | 102 | `declaration-track:b13117ed07a757d08c48b08de0282c3d04cb2bf7b7d5004f0ccbcf5a4598bbed` |
| 24 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Simpa.lean/declarations/example-source-edition-10.md) | 109 | `declaration-track:fdcd73cebab61495223835b615ad80f28e5401885386f2e94064177d0f6c4231` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a38e46c95bd2074cc330202fce9a91d430e335c129ac983f6c8c791caca4b004 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Simpa/Variantd683d27a70ae2dfb68f9b8a24df20a62c0f13ebb4238a77eef38c5823621c5ba.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Simpa/Variantd683d27a70ae2dfb68f9b8a24df20a62c0f13ebb4238a77eef38c5823621c5ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
