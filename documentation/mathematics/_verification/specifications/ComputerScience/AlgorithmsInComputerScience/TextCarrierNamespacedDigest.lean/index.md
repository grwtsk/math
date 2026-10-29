# Verification target: Text Carrier Namespaced Digest

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75d1cd1d95be8c139e4378f6bec0095d5f4a3588",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextCarrier/Variantee6e33c1b05704702bdd43fd1b2bbd7d6dc0d3164c551270f82b3c99ef81a7cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TextCarrierNamespacedDigest.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TextCarrierNamespacedDigest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75d1cd1d95be8c139e4378f6bec0095d5f4a3588`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextCarrier/Variantee6e33c1b05704702bdd43fd1b2bbd7d6dc0d3164c551270f82b3c99ef81a7cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextCarrier/Variantee6e33c1b05704702bdd43fd1b2bbd7d6dc0d3164c551270f82b3c99ef81a7cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Digest](../../../../../ComputerScience/AlgorithmsInComputerScience/TextCarrierNamespacedDigest.lean/declarations/digest.md) | 27 | `declaration-track:39ae0d71315f2fcc1ef7256da42e310f2a40decaee32e4f3ae493dbfb84fca41` |
| 2 | `def` | [Digest.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/TextCarrierNamespacedDigest.lean/declarations/digest-valid.md) | 32 | `declaration-track:743a617f05bf0d6733b888b3875b7b983b5191322a7580d0cdeaf843f95585a4` |
| 3 | `structure` | [StableId](../../../../../ComputerScience/AlgorithmsInComputerScience/TextCarrierNamespacedDigest.lean/declarations/stableid.md) | 39 | `declaration-track:ee5ae3395bc26b019252e0224c533c5fc72e0fdcac5f9cfd8e71b97287ac8066` |
| 4 | `def` | [StableId.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/TextCarrierNamespacedDigest.lean/declarations/stableid-valid.md) | 43 | `declaration-track:365534efe3197e748cf40fffc6406572e05d625b56a06ccd36b13444bc7b96ec` |
| 5 | `structure` | [SnapshotId](../../../../../ComputerScience/AlgorithmsInComputerScience/TextCarrierNamespacedDigest.lean/declarations/snapshotid.md) | 46 | `declaration-track:8f07029778c6bd2cf4cba239b767c72d95096fa5b25ea428d0e89b1407d80b7b` |
| 6 | `structure` | [SourceLocation](../../../../../ComputerScience/AlgorithmsInComputerScience/TextCarrierNamespacedDigest.lean/declarations/sourcelocation.md) | 50 | `declaration-track:b72ffacf137cb3695988c6ecd1600533c44b3c84316946cbaea1d58321cd5d64` |
| 7 | `structure` | [RawTextCarrier](../../../../../ComputerScience/AlgorithmsInComputerScience/TextCarrierNamespacedDigest.lean/declarations/rawtextcarrier.md) | 56 | `declaration-track:5eef96ea1ef7d17b2d7700c7e080cb40d7267fcf05cdc79d217cbacc4578b0b2` |
| 8 | `structure` | [TextCarrier](../../../../../ComputerScience/AlgorithmsInComputerScience/TextCarrierNamespacedDigest.lean/declarations/textcarrier.md) | 61 | `declaration-track:1d2f624e2a4c7474305a091752aa2f6f34537117e9bdc48504a2803081cab9ab` |
| 9 | `def` | [TextCarrier.length](../../../../../ComputerScience/AlgorithmsInComputerScience/TextCarrierNamespacedDigest.lean/declarations/textcarrier-length.md) | 66 | `declaration-track:64c76f8c84c677e2a4122fc3e4e9bab4b0ac2263b12cb093386d4c3606a61d79` |
| 10 | `theorem` | [TextCarrier.length_eq_size](../../../../../ComputerScience/AlgorithmsInComputerScience/TextCarrierNamespacedDigest.lean/declarations/textcarrier-length-eq-size.md) | 69 | `result-track:095e980f58997ee5fc7a6a5fad9edf4c3b299525b663edc7dfa573f1e8caddd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31fad24ff732ec52788af73da32a38230408be0e45a72eb1360eda09ac2cece6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextCarrier/Variantee6e33c1b05704702bdd43fd1b2bbd7d6dc0d3164c551270f82b3c99ef81a7cb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextCarrier/Variantee6e33c1b05704702bdd43fd1b2bbd7d6dc0d3164c551270f82b3c99ef81a7cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
