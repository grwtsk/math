# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Part.Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ada7e6c5733a0990bd984db83e698652a0e6e7a1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean/index.md) · [Full source](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ada7e6c5733a0990bd984db83e698652a0e6e7a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Monotone.partBind](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean/declarations/monotone-partbind--fe600a0f13848e89d63ee531.md) | 26 | `result-track:fe600a0f13848e89d63ee531587d0b0356b740c4c3ed55e67ffaa1c72eec0c8b` |
| 2 | `lemma` | [Antitone.partBind](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean/declarations/antitone-partbind--39e5fc8e5766e035f9f50b3c.md) | 32 | `result-track:39e5fc8e5766e035f9f50b3cbd43b3935f94a29dcbf0774d550d2624a8555516` |
| 3 | `lemma` | [Monotone.partMap](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean/declarations/monotone-partmap--7ce88a11cea78ff4b0a79e10.md) | 43 | `result-track:7ce88a11cea78ff4b0a79e1057f1e034665663bdcda0bfcf8557883e3b000130` |
| 4 | `lemma` | [Antitone.partMap](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean/declarations/antitone-partmap--37237f19c61b7a90ced60cb8.md) | 46 | `result-track:37237f19c61b7a90ced60cb8d55fa60a80d9fc7baaa5ac5de3b608f0bb669129` |
| 5 | `lemma` | [Monotone.partSeq](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean/declarations/monotone-partseq--9582b882e75018110c3f27ac.md) | 54 | `result-track:9582b882e75018110c3f27ac333679e600a840964295326be4d870de67ff7bcd` |
| 6 | `lemma` | [Antitone.partSeq](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean/declarations/antitone-partseq--2e42ddb31f2e18010573cd59.md) | 57 | `result-track:2e42ddb31f2e18010573cd59e5e2ea71372e4d32989dd36cb2db83608f8dfded` |
| 7 | `def` | [partBind](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean/declarations/partbind--f4a164dee922cb4ddd08bd59.md) | 66 | `declaration-track:f4a164dee922cb4ddd08bd59109ffc9bd84431ec440805bff770dfd43bf98264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55a5d765fa43015505fdaf595f37bb693a405831f811e2ffef95c8ecc69e65ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Part/Variantd38801ee4d160b8862e01e30b6bb74b8775764378eaa94559d3e136a8e630d28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
