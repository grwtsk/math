# Verification target: Algebra Bilinear Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a86e27173ee73b1eae7a58391ac1daa88f59c55d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a86e27173ee73b1eae7a58391ac1daa88f59c55d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean.json)

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
| 1 | `def` | [mul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/mul-source-edition-2.md) | 36 | `declaration-track:8dd0a2b57d9280d3e095ac92193c4e20a9941ac30c9c799c3abd086cd8689bfb` |
| 2 | `def` | [mul'](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/mul-source-edition-3.md) | 40 | `declaration-track:acf0bff81af11440ca3b105df3462161d403dcce5e2ea196db21abe1a9cd0331` |
| 3 | `theorem` | [mul_apply'](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/mul-apply-source-edition-2.md) | 49 | `result-track:fa1a4866969aadba26f282c2e37bd2c9fa8c8d5057ac2826495c7af469e5fe20` |
| 4 | `theorem` | [mul'_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/mul-apply.md) | 53 | `result-track:8fc56953e4fd585fb7eb1331975128b9fd54f48864df8bb1657ec84bd69441d5` |
| 5 | `lemma` | [restrictScalars_mul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/restrictscalars-mul.md) | 56 | `result-track:984775fc055d8e5661432694426701f7985d38fff14f96efc6d1c8096196051d` |
| 6 | `theorem` | [lift_lsmul_mul_eq_lsmul_lift_lsmul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/lift-lsmul-mul-eq-lsmul-lift-lsmul.md) | 64 | `result-track:3809ba604d63d07144820f5fa4c59fb9e75abdae2f6caa738041a6bffb0418d1` |
| 7 | `def` | [_root_.NonUnitalAlgHom.lmul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/root-nonunitalalghom-lmul.md) | 82 | `declaration-track:22d5ae4439196b159c1dcc596dc4e910bc483451f08706dde9fbbb229e45fa30` |
| 8 | `theorem` | [_root_.NonUnitalAlgHom.coe_lmul_eq_mul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/root-nonunitalalghom-coe-lmul-eq-mul.md) | 88 | `result-track:00d503ad5b73a2d37cdba6386898e4d7cdf45d26d6d9772696128929d5e75e66` |
| 9 | `theorem` | [commute_mulLeft_right](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/commute-mulleft-right.md) | 91 | `result-track:9f713a856a18c80d2e9f1623083fb9e886a2b779228589e2b168a3603197e037` |
| 10 | `theorem` | [map_mul_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/map-mul-iff.md) | 100 | `result-track:c729da6b6b90f421667abfd2b59dc91a3268c52420c0022731cda17a9ba91c9a` |
| 11 | `theorem` | [pow_mulLeft](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/pow-mulleft.md) | 117 | `result-track:d9ad281b54f92019913fb16787d44c8dc832032ca77dcf648ec9512e103dbf54` |
| 12 | `theorem` | [pow_mulRight](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/pow-mulright.md) | 128 | `result-track:ef01b9515e263afe340e5afc1a1afbea9e466ab44039a9d8fab03459031256ba` |
| 13 | `def` | [_root_.Algebra.lmul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/root-algebra-lmul.md) | 143 | `declaration-track:62c94912b3f91edb4e8bcabbdd23be7ee4bca0a0635c9ae44ec8dada07de8ac6` |
| 14 | `theorem` | [_root_.Algebra.coe_lmul_eq_mul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/root-algebra-coe-lmul-eq-mul.md) | 151 | `result-track:3c925fff1bf9850e7afdf536128aa69aab61a6af47fc86b3aa8e4df93972524e` |
| 15 | `theorem` | [_root_.Algebra.lmul_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/root-algebra-lmul-injective.md) | 154 | `result-track:da5d12ae627472dc7a48959d4194557139a8c2eeb4365a27c7d4746ae8745d1d` |
| 16 | `theorem` | [_root_.Algebra.lmul_isUnit_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/root-algebra-lmul-isunit-iff.md) | 157 | `result-track:78ac4017384070e8d309dd8da89be1d50faf4ddbacfb429260589a2fe2410d21` |
| 17 | `theorem` | [toSpanSingleton_one_eq_algebraLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/tospansingleton-one-eq-algebralinearmap.md) | 162 | `result-track:1a29742db24694b3655bf7312ec84bca99ec835797d360c95889d7f0d017af1c` |
| 18 | `def` | [mul''](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/mul.md) | 167 | `declaration-track:56a3fcb511baa8d3bb1f1b430e65a4ac6102dacce4d584aa783201804835d772` |
| 19 | `lemma` | [flip_mul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/flip-mul.md) | 178 | `result-track:059d1b8ab5b2ffec486b3ce47474760c5f1dc8907d57bd637d2b150b7172c266` |
| 20 | `lemma` | [mul'_comp_comm](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/mul-comp-comm.md) | 180 | `result-track:67c48392c90ff7d1d4ad1f5772f36c58625c491347d9468f854b7c7d922f0fdc` |
| 21 | `lemma` | [mul'_comm](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/mul-comm.md) | 183 | `result-track:df47a1a48fcb667f97605a54e231614a143cb88dc3152b0727c215a1a0875d3b` |
| 22 | `lemma` | [comp_mul'](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/comp-mul.md) | 196 | `result-track:af8b58089d69c036eafbdb5f449b105ddf9d18c8d08290b68f38b897b6c70a8d` |
| 23 | `lemma` | [comp_mul'](../../../../AssociativeRingsAndAlgebras/AlgebraBilinearPublic.lean/declarations/comp-mul-source-edition-2.md) | 204 | `result-track:f4fbcb1aaadc541a60d268acce3311381db63b94212cb994516a114d65700d3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf3c419abfbe439ae0afcd680a541f3f604aa272206a15eca337702c87b6ee96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Bilinear/Variantae49445fb02038c77d8b1818472dcac20a17c1d8a959650f5057db9ee09301f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
