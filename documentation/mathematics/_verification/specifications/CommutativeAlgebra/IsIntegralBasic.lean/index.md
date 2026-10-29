# Verification target: Is Integral Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daac16ef2af8ebf62f9d8711c93743c2f72b89db",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantcb21f0068263a8f6abe18d9cf6f340789458afaf12f4dba56505d5256240f7c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IsIntegralBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IsIntegralBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daac16ef2af8ebf62f9d8711c93743c2f72b89db`.

Source path: `GRWTSK/Algebra/Basic/Variantcb21f0068263a8f6abe18d9cf6f340789458afaf12f4dba56505d5256240f7c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantcb21f0068263a8f6abe18d9cf6f340789458afaf12f4dba56505d5256240f7c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Expand` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Subalgebra` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Tower` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [RingHom.isIntegralElem_map](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/ringhom-isintegralelem-map.md) | 26 | `result-track:97b665dfd2c6123ce3e3ca71626cab2b565e26560be726953267e2cb3cfdd4c9` |
| 2 | `theorem` | [isIntegral_algebraMap](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-algebramap-source-edition-2.md) | 29 | `result-track:e98627047e4bbaacb4cde1126c3a5f752a4cc9d8c6e0f6949c90a6032f492064` |
| 3 | `theorem` | [IsIntegral.map](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-map.md) | 40 | `result-track:d29a21418899bcf34981060ee65853ecd9cb555f9b8620d251e7c9d622b78d75` |
| 4 | `theorem` | [isIntegral_algHom_iff](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-alghom-iff.md) | 53 | `result-track:e1823f19c85272431052e3e9c397e791ac45aaa54d869750bd6af02266dac46e` |
| 5 | `theorem` | [Submodule.span_range_natDegree_eq_adjoin](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/submodule-span-range-natdegree-eq-adjoin.md) | 62 | `result-track:1b6c37c828ae735989b36be9836ea6349bf5afb52571507eba3252c0c47f36af` |
| 6 | `theorem` | [IsIntegral.fg_adjoin_singleton](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-fg-adjoin-singleton.md) | 80 | `result-track:984011bad7953548baee6b96680449933649b5d2fc166a6a675eb3f0cbc5d309` |
| 7 | `theorem` | [RingHom.isIntegralElem_zero](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/ringhom-isintegralelem-zero.md) | 89 | `result-track:681593700dcecd44af339cc7a8d522e21217e07a4708e7e75f816315ba7634ac` |
| 8 | `theorem` | [isIntegral_zero](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-zero.md) | 92 | `result-track:3ae761ec056d4f03fa96d44e95d9835322186087767e9bcb421f06ce9e5c70fe` |
| 9 | `theorem` | [RingHom.isIntegralElem_one](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/ringhom-isintegralelem-one.md) | 95 | `result-track:ddaa5bb5cbfd3f4cd8c24d4d14eb830641e0c1bca0b8d12fd78ae36080d78ac2` |
| 10 | `theorem` | [isIntegral_one](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-one.md) | 98 | `result-track:68403912cb7d58caa4eb927430388318271d50296b04df38bce54bf2258a24d7` |
| 11 | `theorem` | [IsIntegral.of_pow](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-of-pow.md) | 103 | `result-track:67fdfd3b15ae5116a8c926aca941489513d1804e35ac34b7fc7ddeb989295329` |
| 12 | `theorem` | [IsIntegral.of_aeval_monic](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-of-aeval-monic.md) | 108 | `result-track:9a022d321828dc72a963a95c61d987dc41bf06ee423171fe6dda8e8f05b85183` |
| 13 | `theorem` | [IsIntegral.map_of_comp_eq](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-map-of-comp-eq.md) | 121 | `result-track:534a11ca4dae319da5ecef611d45543c29f1ff9ae2884ce196205bd4dbad32a5` |
| 14 | `theorem` | [isIntegral_algEquiv](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-algequiv.md) | 130 | `result-track:16640d92bb9437c6176a82521bfadcad57086c9c5e96d4abd217453aeda5ae05` |
| 15 | `theorem` | [IsIntegral.tower_top](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-tower-top.md) | 136 | `result-track:8baa9e0e7a43b58f25533e51d22f5a5aef2e27c52e1f856ef8eadd506f531bc5` |
| 16 | `theorem` | [RingEquiv.isIntegral_iff](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/ringequiv-isintegral-iff.md) | 144 | `result-track:cc0caa957ac655c2a0955319eef92ce1e069da32cc2e14e5e785b39da5eddbb1` |
| 17 | `theorem` | [map_isIntegral_int](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/map-isintegral-int.md) | 161 | `result-track:90f9ccb1fa7f3373ed069c6c166b3b988be5380dee2513fec0a644ffc19efd65` |
| 18 | `theorem` | [IsIntegral.of_subring](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-of-subring.md) | 166 | `result-track:41538e476533308bbd314c5acb1768a58d3378434a51e28ff49f6e705f9d431e` |
| 19 | `theorem` | [IsIntegral.algebraMap](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-algebramap.md) | 169 | `result-track:491a70167608a4957ff8ec3011b0b98b58a13239715c99746201958d2879c832` |
| 20 | `theorem` | [isIntegral_algebraMap_iff](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-algebramap-iff.md) | 175 | `result-track:344ae4fd04dda2fe94b5add3c3f992c698c04b5284102b6f676df9d5894c6373` |
| 21 | `theorem` | [isIntegral_iff_isIntegral_closure_finite](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-iff-isintegral-closure-finite.md) | 180 | `result-track:75d3219816baf7724c3a24e5d6673f92cf67622c5622b2b2ea3656230c6543e3` |
| 22 | `theorem` | [fg_adjoin_of_finite](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/fg-adjoin-of-finite.md) | 190 | `result-track:9f348cae8fded4552bd77464fa9549d2f2aaadc4b8a69c4bd47ea785a7d095d9` |
| 23 | `theorem` | [Algebra.finite_adjoin_of_finite_of_isIntegral](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/algebra-finite-adjoin-of-finite-of-isintegral.md) | 202 | `result-track:c5c721a9f1820b4c41c10440cfb415baa67beb3553c1a01369633a2bbe5f1b61` |
| 24 | `theorem` | [Algebra.finite_adjoin_simple_of_isIntegral](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/algebra-finite-adjoin-simple-of-isintegral.md) | 206 | `result-track:1826a3b9005e8236981814f06d197557b90196623802a9ecae62e30cd8985a19` |
| 25 | `theorem` | [isNoetherian_adjoin_finset](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isnoetherian-adjoin-finset.md) | 210 | `result-track:28cb0ebece967036cec45b747f0fe6b5cabae7ae1af4daaf2c3d1e9331342cd1` |
| 26 | `theorem` | [IsIntegral.pair](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-pair.md) | 222 | `result-track:d0146e14d4bdf4c42f95f46268300902b919e49c580a1741b3ccb01b78c08a79` |
| 27 | `theorem` | [IsIntegral.pair_iff](../../../../CommutativeAlgebra/IsIntegralBasic.lean/declarations/isintegral-pair-iff.md) | 232 | `result-track:aa9ad22c9cef497bd29e2f54acceda0bd2d8eb595979e17bdcbc343e0c0d4fcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f087ddf97cb57cb87ca3950b2f9b10fe50a30284eac7ee1728b6e51b4b973e8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantcb21f0068263a8f6abe18d9cf6f340789458afaf12f4dba56505d5256240f7c3.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantcb21f0068263a8f6abe18d9cf6f340789458afaf12f4dba56505d5256240f7c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
