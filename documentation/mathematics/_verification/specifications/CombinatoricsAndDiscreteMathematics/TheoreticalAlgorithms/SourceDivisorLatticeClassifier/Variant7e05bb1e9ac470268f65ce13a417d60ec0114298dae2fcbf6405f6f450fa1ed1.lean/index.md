# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceDivisorLatticeClassifier.Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d5aa201a84729bcfd1bb23d56d463d54a8f6108",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/index.md) · [Full source](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d5aa201a84729bcfd1bb23d56d463d54a8f6108`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Powerset` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorPattern](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/declarations/divisorpattern--fb1835a47df1f2144919eae9.md) | 20 | `declaration-track:fb1835a47df1f2144919eae90f26cdab2a883a6436f6f5c20a99ca0e6b1b2389` |
| 2 | `def` | [restrictPattern](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/declarations/restrictpattern--a17d2ab5a2950c0871afceea.md) | 23 | `declaration-track:a17d2ab5a2950c0871afceeae9512aa12a3c107cf4d9e30b51e8f24acc536d8a` |
| 3 | `theorem` | [divisorPattern_restrict](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/declarations/divisorpattern-restrict--a14981d9feb9313b107291cc.md) | 26 | `result-track:a14981d9feb9313b107291cca122f82fa3b7505305b02045afcbb0cb06868789` |
| 4 | `def` | [observation](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/declarations/observation--cc61a6824e0ad7104013f43a.md) | 38 | `declaration-track:cc61a6824e0ad7104013f43a873a1e4275bdb3765e5d9a070a3db62e507ee08b` |
| 5 | `theorem` | [divisorPattern_union](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/declarations/divisorpattern-union--3861c4d5559fe3a29d4e0529.md) | 42 | `result-track:3861c4d5559fe3a29d4e052944ecc875a12a064e1df4d721245b863db3522e2c` |
| 6 | `theorem` | [union_pattern_eq_iff](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/declarations/union-pattern-eq-iff--3e9946bd36352faa45940672.md) | 49 | `result-track:3e9946bd36352faa45940672a7b9612774fe088057dddb70ad3302fc0e778511` |
| 7 | `theorem` | [observation_union](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/declarations/observation-union--410a693e65c166d7f2643006.md) | 63 | `result-track:410a693e65c166d7f2643006cadafe6d00da61532171a5897eee71608e8cb93b` |
| 8 | `theorem` | [observation_antitone](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/declarations/observation-antitone--e569a16dbebd8018c9474c20.md) | 70 | `result-track:e569a16dbebd8018c9474c209b9cdb4335c14ae38a87fa5cc8fb1b3ba657183c` |
| 9 | `theorem` | [observation_sup_le_inter](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/declarations/observation-sup-le-inter--acfc28051f49cbeed4b64e04.md) | 79 | `result-track:acfc28051f49cbeed4b64e04537f423d422b7b0ed66692daf289b34338227029` |
| 10 | `theorem` | [observation_two_bot](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/declarations/observation-two-bot--6cfc945f78c11155d6e7d0a6.md) | 84 | `result-track:6cfc945f78c11155d6e7d0a6983396dbeb0bd3dcb991ba9eed49dd3c585e87ae` |
| 11 | `theorem` | [observation_three_bot](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/declarations/observation-three-bot--b57d25994afee01282cda9bd.md) | 109 | `result-track:b57d25994afee01282cda9bddc14caca606a7687e1eaa69cf6631583d1a7cac3` |
| 12 | `theorem` | [strict_observation_join](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean/declarations/strict-observation-join--f36f2f9f13a8685691b44384.md) | 135 | `result-track:f36f2f9f13a8685691b44384c08c52787249b341040c44c0f5bf91bcb65b8b9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad7d3b86eae00f7c5e2c7d5983db896139fd49620f1bd62dfcac12a01e2117a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SourceDivisorLatticeClassifier/Variant7e05bb1e9ac470268f65ce13a417d60ec0114298dae2fcbf6405f6f450fa1ed1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
