# Verification target: Dvd Sequence Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b0b9f419daf7ba318ee52e5cd8f33f2a3db50e7",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/DvdSequence/Variantbb94199d5acf485094d7ac66716bc18a4ac5c12b680ccf08bdbed3c3ac337c5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b0b9f419daf7ba318ee52e5cd8f33f2a3db50e7`.

Source path: `GRWTSK/Algebra/GroupTheory/DvdSequence/Variantbb94199d5acf485094d7ac66716bc18a4ac5c12b680ccf08bdbed3c3ac337c5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/DvdSequence/Variantbb94199d5acf485094d7ac66716bc18a4ac5c12b680ccf08bdbed3c3ac337c5c.lean.json)

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
| 1 | `lemma` | [smul_dvd_smul](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/declarations/smul-dvd-smul.md) | 41 | `result-track:95855b9f1e59d9bf827c12b6d99d04441ae4e99ecd867d506a6efa75f27f4f82` |
| 2 | `def` | [IsDvdSequence](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/declarations/isdvdsequence.md) | 48 | `declaration-track:9f7da99b61b46a7d68af7aa4392763cfa748a9ccce7ea280c925b9a853a5692f` |
| 3 | `theorem` | [id](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/declarations/id.md) | 56 | `result-track:2dbded7f9dc904c82847fc3637b8df1b5d78a9410c9214bec3d7709310ebe5d2` |
| 4 | `theorem` | [const](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/declarations/const.md) | 60 | `result-track:4a2258cc53fe34dd4872624ac5e14c5dee9dc7f8ffd1fcc709bc2b0966c96206` |
| 5 | `theorem` | [smul'](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/declarations/smul-source-edition-2.md) | 63 | `result-track:1cda2da49eb8b33d87988d7317c4a3a37f208e94b0f0a9b657b36aade27e7a63` |
| 6 | `theorem` | [mul](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/declarations/mul.md) | 68 | `result-track:2783fb8450b8077c3813fea0579b22c3d03250fa5f2311869bff7abee103f9ed` |
| 7 | `theorem` | [smul](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/declarations/smul.md) | 72 | `result-track:187049b3177e70b5f6439edb256f61813779e1cb4daa72f2317060ffcce6f1d9` |
| 8 | `theorem` | [comp](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/declarations/comp.md) | 77 | `result-track:1f2e11b430489a9bbb686b4aef074c98339e9c926f85cda6dca53259b671fd88` |
| 9 | `def` | [IsStrongDvdSequence](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/declarations/isstrongdvdsequence.md) | 89 | `declaration-track:60739d73b0b6c5ae1bb9373f58b08ab249b8d90deeba97797c12d2e087cb3b00` |
| 10 | `theorem` | [isDvdSequence](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/declarations/isdvdsequence-source-edition-2.md) | 94 | `result-track:dd48d8eae1c0acea8daf6477f967112952038b281dff7b25147415448f5d398d` |
| 11 | `theorem` | [id](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/declarations/id-source-edition-2.md) | 98 | `result-track:d576252f9999f556460e654344603b924e51401623692170ff61801b7282d71c` |
| 12 | `theorem` | [const](../../../../../NumberTheory/ElementaryNumberTheory/DvdSequenceNamespacedPublic.lean/declarations/const-source-edition-2.md) | 101 | `result-track:936e9ecb6f30fb76e768cf91abc6f869dfa378cd7488f46d03f11215392696e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3c07b0b4f4c1d7d7f9ffe10494eec8b40020cd486c7834afffb237b1a4c34dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/DvdSequence/Variantbb94199d5acf485094d7ac66716bc18a4ac5c12b680ccf08bdbed3c3ac337c5c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/DvdSequence/Variantbb94199d5acf485094d7ac66716bc18a4ac5c12b680ccf08bdbed3c3ac337c5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
