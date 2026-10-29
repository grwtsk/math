# Verification target: Cartan Exists Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72fa98c0c595172f3aa0e93d2883dcd675f5632a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CartanExists/Variant0e60884661025d282419e0fbef52a90e4ddc8212092ba2ba491b213ef6fb650a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/CartanExistsPublic.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/CartanExistsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72fa98c0c595172f3aa0e93d2883dcd675f5632a`.

Source path: `GRWTSK/Algebra/CartanExists/Variant0e60884661025d282419e0fbef52a90e4ddc8212092ba2ba491b213ef6fb650a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CartanExists/Variant0e60884661025d282419e0fbef52a90e4ddc8212092ba2ba491b213ef6fb650a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lieCharpoly](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/CartanExistsPublic.lean/declarations/liecharpoly.md) | 83 | `declaration-track:33831f594b8ae138ee8be7fdabde7dbab92ad0d748e66b93c4964ed5540e2cd3` |
| 2 | `lemma` | [lieCharpoly_monic](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/CartanExistsPublic.lean/declarations/liecharpoly-monic.md) | 90 | `result-track:9bb7cfe5b3922e26c7706d8cffce7c14575cbb6903733aa1344a4b17d3ed3ca0` |
| 3 | `lemma` | [lieCharpoly_natDegree](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/CartanExistsPublic.lean/declarations/liecharpoly-natdegree.md) | 95 | `result-track:7aee67ca5ec2b5ffa16c3b12eae15db1778dbd1a48455e12cb9707a6050d39ef` |
| 4 | `lemma` | [lieCharpoly_map_eval](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/CartanExistsPublic.lean/declarations/liecharpoly-map-eval.md) | 101 | `result-track:ba230e10083fd030a954577e54459747eb1ea1f8293c4438bf4643b8e79ce8d6` |
| 5 | `lemma` | [lieCharpoly_coeff_natDegree](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/CartanExistsPublic.lean/declarations/liecharpoly-coeff-natdegree.md) | 113 | `result-track:024bc2e769fe422955deeab649b95b67cb64125524a6a89743e31ef73b2295d4` |
| 6 | `lemma` | [engel_isBot_of_isMin](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/CartanExistsPublic.lean/declarations/engel-isbot-of-ismin.md) | 137 | `result-track:2e02e5d0c05e76c7e7391bb4a63ecea3fa48429dc8be2971f0586d8271e02b4e` |
| 7 | `lemma` | [exists_isCartanSubalgebra_engel_of_finrank_le_card](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/CartanExistsPublic.lean/declarations/exists-iscartansubalgebra-engel-of-finrank-le-card.md) | 356 | `result-track:b58aa6cfd9cfdd6c519fcc5feceb530ca123334cce583e9614dd76d83f62f528` |
| 8 | `lemma` | [exists_isCartanSubalgebra_engel](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/CartanExistsPublic.lean/declarations/exists-iscartansubalgebra-engel.md) | 374 | `result-track:08036fce84a17574eb88060515c9600b5a62de688fbb75397bdf4977c0bd3805` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd53f456ac571696aa884af25386f846174330c791c2812e470fffbef5718b87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CartanExists/Variant0e60884661025d282419e0fbef52a90e4ddc8212092ba2ba491b213ef6fb650a.lean","GRWTSK/_verification/specifications/Algebra/CartanExists/Variant0e60884661025d282419e0fbef52a90e4ddc8212092ba2ba491b213ef6fb650a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
