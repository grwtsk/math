# Verification target: Lie Cartan Matrix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "011ffab0725a272b87d5dba32ba1b92aa95db5a2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variantd562432361234321729c206edc76befa9f8b642060b771d467253ace99f8bd17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `011ffab0725a272b87d5dba32ba1b92aa95db5a2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variantd562432361234321729c206edc76befa9f8b642060b771d467253ace99f8bd17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CartanMatrix/Variantd562432361234321729c206edc76befa9f8b642060b771d467253ace99f8bd17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Free` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Generators](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/generators.md) | 95 | `declaration-track:b3300e21b360e1b2397cc0c5a816ffb98d6127d6466aadcd00df6b759173e98d` |
| 2 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/instance.md) | 100 | `declaration-track:ad93a3ccd64f76a9a7dce7a855507582e212d5cc1d7d64b65916550f49499c6a` |
| 3 | `def` | [HH](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/hh.md) | 115 | `declaration-track:12f521d55cec9b38a9b998bb9440bc8aa1bb33865cc97caa44ea93f0577e0165` |
| 4 | `def` | [EF](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/ef.md) | 119 | `declaration-track:78b3392a1d076e3b0bb6b89220430981f9d530f892bb73710708d74ddde0e2bf` |
| 5 | `def` | [HE](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/he.md) | 123 | `declaration-track:c8169eb732636651862fa87c5ba295f4b90d4a5b6f8f619bc23d03953c9d6bc3` |
| 6 | `def` | [HF](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/hf.md) | 127 | `declaration-track:2d066b993aaa42c902e38ed1f1baf37111c53803ae5afbea6572c62399f4df62` |
| 7 | `def` | [adE](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/ade.md) | 135 | `declaration-track:89313edf24161852803fd72a9b638c90fb9bfba43ea220b0595d01f5d5ab253d` |
| 8 | `def` | [adF](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/adf.md) | 141 | `declaration-track:bd4cdcf40a538b0df761c3737dc5aa8d33d929c4c31281ca4eb18f9afaf9caec` |
| 9 | `theorem` | [adE_of_eq_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/ade-of-eq-eq-zero.md) | 144 | `result-track:a8761ff3a25159d587c8fe215a69925c1ce00651d18f97bb18e34f02e4d749ab` |
| 10 | `theorem` | [adF_of_eq_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/adf-of-eq-eq-zero.md) | 148 | `result-track:49b1882ae0f8a5f9c2f5677907813249a557636dbec7e909e7a12ab36289e288` |
| 11 | `def` | [toSet](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/toset.md) | 153 | `declaration-track:3024480bb6639ee93dda5f52bfd6e8e3dc27fe5b897c05a4094aee293a04f60c` |
| 12 | `def` | [toIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/toideal.md) | 159 | `declaration-track:9950a0249a60d45a70d2826a66fbee20fbada6a35b10d331ecc8c36d06230a93` |
| 13 | `def` | [Matrix.ToLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/matrix-toliealgebra.md) | 172 | `declaration-track:bafc667d6f0810a35eed4175a2fb919e854eac588c24e9db136af9b48f83c1bc` |
| 14 | `instance` | [Matrix.ToLieAlgebra.instLieRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/matrix-toliealgebra-instliering.md) | 177 | `declaration-track:dc07b2368e5c7f03ea638ef1583210a280bd9b56a1776316219d50f2a01f85d6` |
| 15 | `instance` | [Matrix.ToLieAlgebra.instInhabited](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/matrix-toliealgebra-instinhabited.md) | 180 | `declaration-track:188b5a4478faf6b9eb952199f119b82a46e1414adbc659601be73804466b61c2` |
| 16 | `instance` | [Matrix.ToLieAlgebra.instLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/matrix-toliealgebra-instliealgebra.md) | 183 | `declaration-track:eff6a25c313ab8f515bf38edecaeac7de36e22b827fa05eaf083ff2218494d39` |
| 17 | `def` | [E₆](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/e-source-edition-2.md) | 197 | `declaration-track:2c4787d5ce4a95af25138214c0e65fe0f24b1a3981a2605aa0c79ccd4836ac77` |
| 18 | `def` | [E₇](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/e-source-edition-5.md) | 214 | `declaration-track:9a40137bc0813be3a71c5036f57af8fd1f927f94f1866eaf9131ed9e824744c8` |
| 19 | `def` | [E₈](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/e.md) | 232 | `declaration-track:147058204a899e2e2c732bd1da42ec99e6cd349125ad292c1a3b596ca6ac9ebc` |
| 20 | `def` | [F₄](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/f.md) | 249 | `declaration-track:326a2cf421b214393931cb4a99590dce24da24c699394b8214d07f6bc959267e` |
| 21 | `def` | [G₂](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/g.md) | 260 | `declaration-track:4cac5b00427e849df9618033066cac9562429fb8e7145a734f9a672b62b800c8` |
| 22 | `abbrev` | [e₆](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/e-source-edition-4.md) | 268 | `declaration-track:90055e05e8b4f5126faf89dae2c8c7bac762f79aa72993bae86934b159a25dcd` |
| 23 | `abbrev` | [e₇](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/e-source-edition-6.md) | 272 | `declaration-track:c42087d4b6ab1427e849e3c7611c2ca581bd52dd880dfd993cf17539cc9e6556` |
| 24 | `abbrev` | [e₈](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/e-source-edition-3.md) | 276 | `declaration-track:6eb3effd0cf5f5f16474212f8aa78aa35c24ba2396119e2fdcccc94e94789cbd` |
| 25 | `abbrev` | [f₄](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/f-source-edition-2.md) | 280 | `declaration-track:a69617e268a2ae1880c5413bd4f5d95c5acc30cd0745b4aaf8e2c795620ecdd0` |
| 26 | `abbrev` | [g₂](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrix.lean/declarations/g-source-edition-2.md) | 284 | `declaration-track:76e94c714bf2a6c7c9df37b23543dba1cfa0bc554b360a9affb660bf3802eb74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c23dd4a21041525bea2ee7907e2955d539380f112257c18ba435cd33e9b334b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variantd562432361234321729c206edc76befa9f8b642060b771d467253ace99f8bd17.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CartanMatrix/Variantd562432361234321729c206edc76befa9f8b642060b771d467253ace99f8bd17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
