# Verification target: Upper Lower

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7196a77596cfbb093e46d72701ec038fc8c1c658",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UpperLower.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UpperLower.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7196a77596cfbb093e46d72701ec038fc8c1c658`.

Source path: `GRWTSK/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.UpperLower` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.thickening'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UpperLower.lean/declarations/isupperset-thickening.md) | 34 | `result-track:d5e227f2b75870a5dd2dcfe3f3805dd1ee660d86fcb51893a6a2443e983de1e4` |
| 2 | `theorem` | [IsLowerSet.thickening'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UpperLower.lean/declarations/islowerset-thickening.md) | 42 | `result-track:a82385f879047378207d8fb035aef532eff9deb4ab4bba11388c7d9bc7ec8fc9` |
| 3 | `theorem` | [IsUpperSet.cthickening'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UpperLower.lean/declarations/isupperset-cthickening.md) | 50 | `result-track:d898c09bcd579498dc3d733532af094a4825cf4809c25507a02f2bec9ca77411` |
| 4 | `theorem` | [IsLowerSet.cthickening'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UpperLower.lean/declarations/islowerset-cthickening.md) | 58 | `result-track:61264266c1ec4b6412c8ab65eb34d9a131d198f65c7516d3ab8afa9778aa1244` |
| 5 | `theorem` | [IsUpperSet.mem_interior_of_forall_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UpperLower.lean/declarations/isupperset-mem-interior-of-forall-lt.md) | 74 | `result-track:99485fedbd533cac141ec8e6f1469e842a54cbb67c76213cd484c074a816e671` |
| 6 | `theorem` | [IsLowerSet.mem_interior_of_forall_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UpperLower.lean/declarations/islowerset-mem-interior-of-forall-lt.md) | 92 | `result-track:d12006d2b2912b8ba2c0b2e8276b88dc64bbf31abae4a1fe5c3224c89482f03a` |
| 7 | `theorem` | [IsUpperSet.exists_subset_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UpperLower.lean/declarations/isupperset-exists-subset-ball.md) | 117 | `result-track:ee3c792c8a81bae9c3e062f7bae980798f77794661b118a525a309ba2e7c1147` |
| 8 | `theorem` | [IsLowerSet.exists_subset_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UpperLower.lean/declarations/islowerset-exists-subset-ball.md) | 136 | `result-track:d20776be9555be8879e97294fb5483f4b6b4b3c431e0e4965f655cf891afcf8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49b95ef25418615dc5908479a3c50215bbd1ec5d690c9461ae7c306e425f0d2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/UpperLower/Variantcb7757278521b1ad0c61c8e2b8f8e1142c4ad97d8d55d4cefb6d29496eb8f952.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
