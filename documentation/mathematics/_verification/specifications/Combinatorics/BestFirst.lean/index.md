# Verification target: Best First

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cebf116ebee4d5d5024090671b691651a18f749",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant234f5edb085a2e11e8565ad0ed119cb8588fb7b835d5ae63e4cc237e8300f12d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/BestFirst.lean/index.md) · [Full source](../../../../Combinatorics/BestFirst.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cebf116ebee4d5d5024090671b691651a18f749`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant234f5edb085a2e11e8565ad0ed119cb8588fb7b835d5ae63e4cc237e8300f12d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant234f5edb085a2e11e8565ad0ed119cb8588fb7b835d5ae63e4cc237e8300f12d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.MLList.BestFirst` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Point](../../../../Combinatorics/BestFirst.lean/declarations/point.md) | 12 | `declaration-track:4cd690827880b0e6196d2e21a5c86730d94007b29561dc40169e477009a7f0ef` |
| 2 | `def` | [wall](../../../../Combinatorics/BestFirst.lean/declarations/wall.md) | 15 | `declaration-track:8387bc18c19e71f9806116440b0e7c8846a84bc3386e66c9499e9cf310fa26c6` |
| 3 | `def` | [nbhd](../../../../Combinatorics/BestFirst.lean/declarations/nbhd.md) | 18 | `declaration-track:27e96e1134bf5c2b3a526c11678937bedfc9e70458882519563feb1e744e2631` |
| 4 | `def` | [emb](../../../../Combinatorics/BestFirst.lean/declarations/emb.md) | 22 | `declaration-track:2d19eaa1dc35abbbe4f90ffeda4e11fad6f18b2cf40c23d1fb8099b59dbc6deb` |
| 5 | `lemma` | [emb_injective](../../../../Combinatorics/BestFirst.lean/declarations/emb-injective.md) | 25 | `result-track:f2bab04a358ae4fafe79971dfe3d5e8a6ee9a31f05298e9db822ae18ed9d745b` |
| 6 | `instance` | [(anonymous)](../../../../Combinatorics/BestFirst.lean/declarations/instance.md) | 28 | `declaration-track:26e221aa96ee507de89492c1c560f6e3521b0bca1ca1521736ec3d67abaecddd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9687d0982ec225c9a5950af1be00448a346f48755a6437f14d5e7c8b5a4aabd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant234f5edb085a2e11e8565ad0ed119cb8588fb7b835d5ae63e4cc237e8300f12d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant234f5edb085a2e11e8565ad0ed119cb8588fb7b835d5ae63e4cc237e8300f12d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
