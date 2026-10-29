# Verification target: Prime Polynomial

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc623931f9d9ec008fb2a0a23618e8acbc496846",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantac6080fb8ca6b1f91ea4893bf154aecbe3af582c047009751e20174c0e203988.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PrimePolynomial.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PrimePolynomial.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc623931f9d9ec008fb2a0a23618e8acbc496846`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantac6080fb8ca6b1f91ea4893bf154aecbe3af582c047009751e20174c0e203988.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variantac6080fb8ca6b1f91ea4893bf154aecbe3af582c047009751e20174c0e203988.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Charpoly.BaseChange` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Zero` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdjoinRoot` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Ideal` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.MvPolynomial` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isNilpotent_tensor_residueField_iff](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/isnilpotent-tensor-residuefield-iff.md) | 36 | `result-track:2542aac8991d5db222297be7a034424781aca3135d1ab0c03582722eafb0f7e3` |
| 2 | `lemma` | [mem_image_comap_zeroLocus_sdiff](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/mem-image-comap-zerolocus-sdiff.md) | 70 | `result-track:61721c55755a9209e181ab17a43bc3f083d86d3310d9a0a4610b0b31f82319a1` |
| 3 | `lemma` | [mem_image_comap_basicOpen](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/mem-image-comap-basicopen.md) | 105 | `result-track:bb332cb13d20e046dfbad8e66f7698b6173d4ba2365987897b9ffd81e2af4269` |
| 4 | `lemma` | [exists_image_comap_of_finite_of_free](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/exists-image-comap-of-finite-of-free.md) | 119 | `result-track:37a04ee210cf4d87da146b811b71de15e1f45f49c484b8f2176035a0f55fae78` |
| 5 | `lemma` | [mem_image_comap_C_basicOpen](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/mem-image-comap-c-basicopen-source-edition-2.md) | 134 | `result-track:f717aba70d8bbb551ca0d2ab2da2ef8a28d10f9eac2d6b7bb90b78ee5ba28093` |
| 6 | `lemma` | [image_comap_C_basicOpen](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/image-comap-c-basicopen.md) | 148 | `result-track:5ee07fbddf391a54102d02f9a58c61107c202cd5206f7a3d6f5c298b5d526456` |
| 7 | `lemma` | [isOpenMap_comap_C](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/isopenmap-comap-c-source-edition-2.md) | 154 | `result-track:9a53f19e6bdb2f6573441c1112f5aaf952a8ac7d32a8031bc1c36420f0cee6a2` |
| 8 | `lemma` | [comap_C_surjective](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/comap-c-surjective.md) | 164 | `result-track:14243864c6b2dd7bbffb25ac8a55cfd28e0c2a8587ef455cbd834c8132e1333f` |
| 9 | `lemma` | [exists_image_comap_of_monic](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/exists-image-comap-of-monic.md) | 170 | `result-track:99c22dea3d30de9da1ab7be72be697357244a62267d1fd5a94c6aa61f9dba914` |
| 10 | `lemma` | [isCompact_image_comap_of_monic](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/iscompact-image-comap-of-monic.md) | 176 | `result-track:6845e95897452dc9d6e767c2bd18d5c0954e93545d2ec970d8e17837125c31a2` |
| 11 | `lemma` | [isOpen_image_comap_of_monic](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/isopen-image-comap-of-monic.md) | 183 | `result-track:6bed6e99bcc5b2828d5802259c7bf80e31a02390b6e660c07a351b1649b74b0a` |
| 12 | `lemma` | [mem_image_comap_C_basicOpen](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/mem-image-comap-c-basicopen.md) | 195 | `result-track:03c8508cadf1e877c66d60e17c9963ac820eedce54438f5eb3f7da0dc7bcf166` |
| 13 | `lemma` | [image_comap_C_basicOpen](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/image-comap-c-basicopen-source-edition-2.md) | 211 | `result-track:c66e04917d305a539cecf7e954ace1a118cbdf88120f09050de26205f3606634` |
| 14 | `lemma` | [isOpenMap_comap_C](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/isopenmap-comap-c.md) | 217 | `result-track:0e461d9ccf850d67a860ecc287df0aa4e64515514a7128f4614109de27dc3e82` |
| 15 | `lemma` | [comap_C_surjective](../../../../CommutativeAlgebra/PrimePolynomial.lean/declarations/comap-c-surjective-source-edition-2.md) | 227 | `result-track:4687658814c5ccdf880f25c850294f593e1187d230ba2c1e3faf06ecdbb13e0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8bfe7192e34aca4789e6e68618eef876b82e34da6483bdebf170ea3a2edf28b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantac6080fb8ca6b1f91ea4893bf154aecbe3af582c047009751e20174c0e203988.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Polynomial/Variantac6080fb8ca6b1f91ea4893bf154aecbe3af582c047009751e20174c0e203988.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
