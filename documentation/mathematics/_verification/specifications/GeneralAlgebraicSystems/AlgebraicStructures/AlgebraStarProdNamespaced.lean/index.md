# Verification target: Algebra Star Prod Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4482e87e3bd6a4bba17208e4b21bcda1081fa184",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant0173ded3dcc245bca2eeb8917e1aa27f3f01503bb241d882a7550c6c6fc6f3a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4482e87e3bd6a4bba17208e4b21bcda1081fa184`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variant0173ded3dcc245bca2eeb8917e1aa27f3f01503bb241d882a7550c6c6fc6f3a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variant0173ded3dcc245bca2eeb8917e1aa27f3f01503bb241d882a7550c6c6fc6f3a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/declarations/instance-source-edition-3.md) | 30 | `declaration-track:282861aaa3552cca3bac4dc807ac73ae3fe4191636164689fd0ed94178eade5f` |
| 2 | `theorem` | [fst_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/declarations/fst-star.md) | 33 | `result-track:548b0a209de0e3a1a3d64897cd58ca139ccf900d1f9b68d4364e80b32e06bfce` |
| 3 | `theorem` | [snd_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/declarations/snd-star.md) | 37 | `result-track:d68daabfe06c8cab67661123333900d2bae237a8198fe7ab527835ce0faf5931` |
| 4 | `theorem` | [star_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/declarations/star-def.md) | 40 | `result-track:20ef6613cc25dfeb3589fb998a3fc1b828a4b47531b1f64a534329fd9485d884` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/declarations/instance-source-edition-7.md) | 43 | `declaration-track:d52b115c5ee8b78cc910dbf0075bc04e112ee743233628c6f0ce00fd88918b42` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/declarations/instance-source-edition-5.md) | 46 | `declaration-track:a5cd9600d36ebc8d5be9e53ec6422a79b93d9e858888abf2dd1d4bb706d0778b` |
| 7 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/declarations/instance-source-edition-4.md) | 49 | `declaration-track:436537cce534f094f783e75fb2c53e6abe68b9eae466fa46963fc72829f9dbe7` |
| 8 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/declarations/instance.md) | 52 | `declaration-track:1a541634c5c3835d84aae1d0c3468f92e093b7d987acc029bb84a1d7ec884ff9` |
| 9 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/declarations/instance-source-edition-2.md) | 56 | `declaration-track:261376b5d5aa6240f8741fdd328f7966fd792d08adaf0764ab8912f916caaca9` |
| 10 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/declarations/instance-source-edition-6.md) | 61 | `declaration-track:b56ae826033a032890dc94acac493bcd64fe9afd9ee99d7efb665a96c00df74c` |
| 11 | `theorem` | [Units.embed_product_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/AlgebraStarProdNamespaced.lean/declarations/units-embed-product-star.md) | 67 | `result-track:50e801b527ddf3f5db7680c53fc749d4578e6d86f363f8ca7cb0f48b76bcd8c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad5535fec5c6bd1d6c9843bc98288a563768a8a6f74bbca36ed5467463e6dc6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Prod/Variant0173ded3dcc245bca2eeb8917e1aa27f3f01503bb241d882a7550c6c6fc6f3a9.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Prod/Variant0173ded3dcc245bca2eeb8917e1aa27f3f01503bb241d882a7550c6c6fc6f3a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
