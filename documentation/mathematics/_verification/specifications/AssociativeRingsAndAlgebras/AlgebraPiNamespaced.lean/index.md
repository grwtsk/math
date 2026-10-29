# Verification target: Algebra Pi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60f0d0a3538be1773fff906a2dd6485c624facd2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60f0d0a3538be1773fff906a2dd6485c624facd2`.

Source path: `GRWTSK/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [algebra](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/algebra.md) | 40 | `declaration-track:c57bdd0824b6cd214da1d85c78160e78e666069166aeb51e02d9172285732ce7` |
| 2 | `theorem` | [algebraMap_def](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/algebramap-def.md) | 45 | `result-track:a8a77a20cc92c204834b250aaaed1cea67020e02f79bb93fa7ec74e49a51b011` |
| 3 | `theorem` | [algebraMap_apply](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/algebramap-apply.md) | 49 | `result-track:43cac388e9fabeb9a3006f49d640dc46f387970de6ef719eddad4142aae54023` |
| 4 | `def` | [algHom](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/alghom.md) | 57 | `declaration-track:cacf498ad4a8be0ae975968ccd86132140615cc68ab4764f1e648257de1da662` |
| 5 | `def` | [evalAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/evalalghom.md) | 64 | `declaration-track:cd6452a5b5b7cb62f7e697b4eed76eaeaa3d8dd38ae510891e6822d82cdadc6f` |
| 6 | `theorem` | [algHom_evalAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/alghom-evalalghom.md) | 70 | `result-track:20a68fdcb6205d2523082a1c28d981d8d25e6e5611a40c890f4df71831c3dbd5` |
| 7 | `theorem` | [algHom_comp](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/alghom-comp.md) | 73 | `result-track:8154c6164cdf6081d1b288299acac1d37da7f4f631cdefcd5eafb895dc130ccd` |
| 8 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/instance.md) | 79 | `declaration-track:d8d73be64cf63f4cce975e224fc94c7e4b248b98cee2c07a8f1f4c36d222b269` |
| 9 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/example.md) | 84 | `declaration-track:36c075535d897f734c6ed143a51ed856e721aa7bc3ceb7310b2c1c20d99acb55` |
| 10 | `def` | [constAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/constalghom.md) | 91 | `declaration-track:66eb159a1567bca739b0df66ace529dd9752e5562073f9e75a4f9f0c20b451b3` |
| 11 | `theorem` | [constRingHom_eq_algebraMap](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/constringhom-eq-algebramap.md) | 99 | `result-track:54f7b7b84c7e4e10624351dd0736ad25af159e5d3bb18e61ffb79dd7869cf86a` |
| 12 | `theorem` | [constAlgHom_eq_algebra_ofId](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/constalghom-eq-algebra-ofid.md) | 103 | `result-track:c172c0556fc35cdc5ccaaf4b3adb090a2dc9bf872c5f6050707da0c4fec36dbf` |
| 13 | `instance` | [Function.algebra](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/function-algebra.md) | 110 | `declaration-track:dd64b83b6ee98d0b87f782b3aac0bc7f0fd736ccd7ea9d44f54dccb6386ca649` |
| 14 | `def` | [compLeft](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/compleft.md) | 123 | `declaration-track:b297eb2664f860b6a12f451d7077da1b32e69ef3d01d2a344f426f50702e3e30` |
| 15 | `def` | [piCongrRight](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/picongrright.md) | 145 | `declaration-track:9967d6654def10d872e5f4357857477ce6c27cab8bf3fee245f4ad444d118472` |
| 16 | `theorem` | [piCongrRight_refl](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/picongrright-refl.md) | 154 | `result-track:e7d0997c2895a2f439ba61521ce3edb8e5007f2d0ae59a492ef51d4a9b5ca5d2` |
| 17 | `theorem` | [piCongrRight_symm](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/picongrright-symm.md) | 159 | `result-track:47d6645c12a47c4687a2abfa13c9c8508e62995d80773f268d0ec0f30fb50a97` |
| 18 | `theorem` | [piCongrRight_trans](../../../../AssociativeRingsAndAlgebras/AlgebraPiNamespaced.lean/declarations/picongrright-trans.md) | 164 | `result-track:c034e30f68ef31d0ec3d94eb2aaf0f35b804a5fec96d95fa4026088c76c6fc42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4be50004eb3f873cd61eef7d812b54c6a5089116afbf2978bcf16986c9e6916 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean","GRWTSK/_verification/specifications/Algebra/Pi/Variantbf9fd4843caa9cb3779c993bb42c4e65b5033e0b6dfd11bbd9af340fa34baf6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
