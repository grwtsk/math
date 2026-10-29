# Verification target: Mathlib Namespaced Upstream Status

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bafd43386522bc000128d33c9dddfcd89dcfff5c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variante0c957328e6eb164d39f131f60d364f22dc4fecb6a51563048d0af7303944071.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibNamespacedUpstreamStatus.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibNamespacedUpstreamStatus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bafd43386522bc000128d33c9dddfcd89dcfff5c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variante0c957328e6eb164d39f131f60d364f22dc4fecb6a51563048d0af7303944071.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variante0c957328e6eb164d39f131f60d364f22dc4fecb6a51563048d0af7303944071.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Formal.Patches.Mathlib.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Formal.Patches.Mathlib.Analysis` — import line 7; external provider; requires a separately pinned dependency.
- `Formal.Patches.Mathlib.MeasureTheory` — import line 8; external provider; requires a separately pinned dependency.
- `Formal.Patches.Mathlib.NumberTheory` — import line 9; external provider; requires a separately pinned dependency.
- `Formal.Patches.Mathlib.Topology` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [UpstreamStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibNamespacedUpstreamStatus.lean/declarations/upstreamstatus.md) | 25 | `declaration-track:3deb29e0e195bdab24e3934bd1ff7c59e5c3e849abdea71851f9bb3490598e69` |
| 2 | `def` | [defaultStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibNamespacedUpstreamStatus.lean/declarations/defaultstatus.md) | 31 | `declaration-track:41822a56beff091952282021d005616f7eb6c7f4e04a8811ccc48411c7f3e8ab` |
| 3 | `theorem` | [defaultStatus_is_localOnly](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibNamespacedUpstreamStatus.lean/declarations/defaultstatus-is-localonly.md) | 33 | `result-track:5ad177f0962c5da5b63d5ee9b9a983d9ee05e3995a23deb41016e955ad5572a4` |
| 4 | `def` | [conceptualBoundaries](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibNamespacedUpstreamStatus.lean/declarations/conceptualboundaries.md) | 36 | `declaration-track:cd9fefd047240516fc6605cbaa39d279daadbf41672147bb6aaf6e666da5a8f2` |
| 5 | `theorem` | [conceptualBoundaries_count](../../../../../ComputerScience/AlgorithmsInComputerScience/MathlibNamespacedUpstreamStatus.lean/declarations/conceptualboundaries-count.md) | 44 | `result-track:1ebe5f8029fbda7661e5f5d8ff03986c8ede9ecdabaafde3c5632bfbfb5a42bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b9f39043e4f4c9833242d6bc86190c94c9c06abfcff354d84b1dc3a7f9fa782 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variante0c957328e6eb164d39f131f60d364f22dc4fecb6a51563048d0af7303944071.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Mathlib/Variante0c957328e6eb164d39f131f60d364f22dc4fecb6a51563048d0af7303944071.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
