# Verification target: TFAENamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7249a8cd7863b106aa54fbe87b034d5d6ed15b87",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7249a8cd7863b106aa54fbe87b034d5d6ed15b87`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.List.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TFAE](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespaced.lean/declarations/tfae.md) | 34 | `declaration-track:07bf18279f6d4b77e25938b2b60b6ddc2cfe78f3155b5828a9b1a18a28943c48` |
| 2 | `theorem` | [tfae_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespaced.lean/declarations/tfae-nil.md) | 38 | `result-track:be5810cd0768dbac91c3c1753df9be37ae76bb233455e35946f41e808f791319` |
| 3 | `theorem` | [tfae_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespaced.lean/declarations/tfae-singleton.md) | 42 | `result-track:0980f1241f0ededcd115062bcb100a430d11acae4ab52874685fda50b2e34bfb` |
| 4 | `theorem` | [tfae_cons_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespaced.lean/declarations/tfae-cons-of-mem.md) | 45 | `result-track:3fa1f6f75b1e4592da41141eec49afcfe649b4926a19e33dffd7d6730de4eccb` |
| 5 | `theorem` | [tfae_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespaced.lean/declarations/tfae-cons-cons.md) | 56 | `result-track:5dc66d2129ab1fbf91e108cf76ed7d4444f20f88acc7b4c1e10597a69bdb4df9` |
| 6 | `theorem` | [tfae_of_forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespaced.lean/declarations/tfae-of-forall.md) | 60 | `result-track:e82fe604efbf36f87157eba8effc6be1d1139b882874c11191195b24db4c4ab4` |
| 7 | `theorem` | [tfae_of_cycle](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespaced.lean/declarations/tfae-of-cycle.md) | 64 | `result-track:2e16302a249197066fc4960b0fbacec0aeac2656987ad4bf7618ac55a7d10059` |
| 8 | `theorem` | [TFAE.out](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespaced.lean/declarations/tfae-out.md) | 75 | `result-track:31d5e6de6689bfb1e96d6271d8ae06c0a02050469587dd6f862dcf9894cbb008` |
| 9 | `theorem` | [forall_tfae](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespaced.lean/declarations/forall-tfae.md) | 92 | `result-track:489cd5537592e4f88054dbf1a9967291eb921c16dd3f437dc37a07164621bf60` |
| 10 | `theorem` | [exists_tfae](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAENamespaced.lean/declarations/exists-tfae.md) | 111 | `result-track:4b3a2169de6052ad3940a6d006fbb309830ef8658fd53fbc9f09db6905db5995` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=377f9fcce058b2bd8030b371f88feae7d240e74cf9b38cf0eb37d41503037894 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
