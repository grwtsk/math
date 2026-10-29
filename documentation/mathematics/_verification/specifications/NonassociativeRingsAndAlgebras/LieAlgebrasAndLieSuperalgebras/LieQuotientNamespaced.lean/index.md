# Verification target: Lie Quotient Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30b8048e86634bf4c72bfd8e70b9744903b31fd3",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30b8048e86634bf4c72bfd8e70b9744903b31fd3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Submodule` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/instance.md) | 54 | `declaration-track:112c9c76c65eef0a1dfffbf9916bfa8d2db575347560bb6ab07208465f6de226` |
| 2 | `instance` | [addCommGroup](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/addcommgroup.md) | 61 | `declaration-track:2c3caa64a47a95baacb053df88c53a8bf582323fff3db91e246a33d92c02efe5` |
| 3 | `instance` | [module'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/module.md) | 65 | `declaration-track:6989085c763eee0d3ea6865f8e41b94ccd06d392de0f98076c156f8f8fdebcaa` |
| 4 | `instance` | [module](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/module-source-edition-2.md) | 70 | `declaration-track:ccd3f510073b36895591befe6e7da660242d6db630d5a8620a34d509b722042f` |
| 5 | `instance` | [isCentralScalar](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/iscentralscalar.md) | 74 | `declaration-track:86fe5b573c5b918f295cbfc3721c86e15fcb9bb816caa469e4ccf7edcba4ebbb` |
| 6 | `instance` | [inhabited](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/inhabited.md) | 80 | `declaration-track:171be3430aed256f36aebd16127e83b4129524af76a5d7812bafc4bd6338177b` |
| 7 | `abbrev` | [mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/mk.md) | 86 | `declaration-track:aa5a21b573009cbd91ee93ff048ad0a8726a54cba814a7e07bdf52dd0e7046c5` |
| 8 | `theorem` | [is_quotient_mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/is-quotient-mk.md) | 90 | `result-track:10dfe6c501b7d9885ae9f69d0302d17dde3eae280ea01be87abe579b6cb8b844` |
| 9 | `def` | [lieSubmoduleInvariant](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/liesubmoduleinvariant.md) | 96 | `declaration-track:2b1469ec54806e9523281a247358fcf099b9f55d321cd5c5d1b688186db8f233` |
| 10 | `def` | [actionAsEndoMap](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/actionasendomap.md) | 104 | `declaration-track:947c27fc3103497e6b51a6171aa99bca63ec12669d37c2cbb2665c8e6fe07b0e` |
| 11 | `instance` | [actionAsEndoMapBracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/actionasendomapbracket.md) | 113 | `declaration-track:540aa9242fa29becad7fa7f598d4058e18047718d2cfebb8a6a7d0a9eb132153` |
| 12 | `instance` | [lieQuotientLieRingModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/liequotientlieringmodule.md) | 117 | `declaration-track:e18b56a4044e3345c835576dab92a1979528a9ed5b97c9d3539f9258962607d5` |
| 13 | `instance` | [lieQuotientLieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/liequotientliemodule.md) | 122 | `declaration-track:6e325f40d174c8925d9749ea07fa8fa096b35980c6bb14413255e7e09db3a9ef` |
| 14 | `instance` | [lieQuotientHasBracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/liequotienthasbracket.md) | 126 | `declaration-track:9016d9aa3c76c107e4a8f768a30442fc3612c90939e4b27bc4891765cc10cc27` |
| 15 | `theorem` | [mk_bracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/mk-bracket.md) | 142 | `result-track:cb42c258175e32d4c4c8d5b1f9f9088c1f4a2e58255ef76665c49bbb5e7f54db` |
| 16 | `instance` | [lieQuotientLieRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/liequotientliering.md) | 146 | `declaration-track:e69b375a830b7c2081abb157d008948385736cc2704a0cef384a2dadd3439526` |
| 17 | `instance` | [lieQuotientLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/liequotientliealgebra.md) | 177 | `declaration-track:33c6de17a72ce28b0ab2f7f76203d6dc062092692711ff75393c3c64889c9858` |
| 18 | `def` | [mk'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/mk-source-edition-2.md) | 190 | `declaration-track:dda9de963286d08cb11234697bc8268ef0b4aa306183d2921f33f329d0838327` |
| 19 | `theorem` | [mk_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/mk-eq-zero-source-edition-2.md) | 197 | `result-track:e3147f53f4caf610f2aa08be47114d16c760bd7575f45566ee561f47372f1974` |
| 20 | `theorem` | [mk_eq_zero'](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/mk-eq-zero.md) | 203 | `result-track:0edbaa231f92395ee483a5e710b5203333784132f2aaa6c17fd57e1cccdf7b7f` |
| 21 | `theorem` | [mk'_ker](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/mk-ker.md) | 207 | `result-track:a6196976713ab80d7e8adc3bcc8b6979060de268fcb01dc6353137a83c4e7610` |
| 22 | `theorem` | [map_mk'_eq_bot_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/map-mk-eq-bot-le.md) | 211 | `result-track:f904b5464d1124f46d65f3b0288db5ddae77c0eb1f5f09dc544cd14c69f54b2b` |
| 23 | `theorem` | [lieModuleHom_ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/liemodulehom-ext.md) | 220 | `result-track:bbc69930ec2b7e14fde483570ac131be233fe26ba4088aae37b7c67823f7f8ec` |
| 24 | `def` | [quotKerEquivRange](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieQuotientNamespaced.lean/declarations/quotkerequivrange.md) | 238 | `declaration-track:4ddcf936822e8316530d45093a70bc1fb1e7578ff40d60cf7aec803868aa1eff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ea35ad129ffc094309088791180ff447fa4fd2df5d32c008322c1166efb0099 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Quotient/Variant0b0c96dbe4617564b647be2635f151e81b617667b204404ece09660e7b82674c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
