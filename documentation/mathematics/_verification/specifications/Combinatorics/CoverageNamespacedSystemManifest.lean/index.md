# Verification target: Coverage Namespaced System Manifest

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "956cf990598af23daab9fe1e01449b5a2e2a2e03",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Varianta3946de677acd51a70afd80b1e77a5346c43a7abcfcdb74734040b0c7ead2391.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CoverageNamespacedSystemManifest.lean/index.md) · [Full source](../../../../Combinatorics/CoverageNamespacedSystemManifest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `956cf990598af23daab9fe1e01449b5a2e2a2e03`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Varianta3946de677acd51a70afd80b1e77a5346c43a7abcfcdb74734040b0c7ead2391.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Coverage/Varianta3946de677acd51a70afd80b1e77a5346c43a7abcfcdb74734040b0c7ead2391.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Mutation.Event` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SystemManifest](../../../../Combinatorics/CoverageNamespacedSystemManifest.lean/declarations/systemmanifest.md) | 20 | `declaration-track:9bc6db1de734e7c458e77d383c7f8e9dc4bb76ece603af80a238c84b8f6bf59a` |
| 2 | `inductive` | [CoverageDisposition](../../../../Combinatorics/CoverageNamespacedSystemManifest.lean/declarations/coveragedisposition.md) | 26 | `declaration-track:fd7317ecf76960af58b28269da1001b86c1457d43fcc68f76c9d6e6d58067952` |
| 3 | `structure` | [CoverageCertificate](../../../../Combinatorics/CoverageNamespacedSystemManifest.lean/declarations/coveragecertificate.md) | 31 | `declaration-track:9024f932d7778122a850ae3d1b9564b0b34894f09a28459cb950324a1f278121` |
| 4 | `def` | [wholeSystemCovered](../../../../Combinatorics/CoverageNamespacedSystemManifest.lean/declarations/wholesystemcovered.md) | 41 | `declaration-track:d60e64bc5f93c9889fb5b3e610548b567fbb743570fa5a5dc033df0e019d4244` |
| 5 | `structure` | [WholeSystemClaim](../../../../Combinatorics/CoverageNamespacedSystemManifest.lean/declarations/wholesystemclaim.md) | 45 | `declaration-track:61409a83ee3b99268649e953d341787dc6dee18e81864920022e2438a41069b9` |
| 6 | `theorem` | [whole_system_claim_requires_coverage](../../../../Combinatorics/CoverageNamespacedSystemManifest.lean/declarations/whole-system-claim-requires-coverage.md) | 49 | `result-track:aad2c452c235c3c2a6d3bd97db552f60ad6a34ff8a039f0e5895d2d3b03a6c7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd24dfbe90211e2a6b85db7bf513412e5da82176fec8c1722a9c72940e792ea4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Varianta3946de677acd51a70afd80b1e77a5346c43a7abcfcdb74734040b0c7ead2391.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Coverage/Varianta3946de677acd51a70afd80b1e77a5346c43a7abcfcdb74734040b0c7ead2391.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
