# Verification target: GRWTSK.Algebra.TensorProduct.Variant0d2d5da086959f04bde34ffc823efa5dc05ce5835e3aaf07bb9f39a2a4018d1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4a49088a8bc1011ef7ff7d6636c18d1d53caea",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TensorProduct/Variant0d2d5da086959f04bde34ffc823efa5dc05ce5835e3aaf07bb9f39a2a4018d1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/TensorProduct/Variant0d2d5da086959f04bde34ffc823efa5dc05ce5835e3aaf07bb9f39a2a4018d1d.lean/index.md) · [Full source](../../../../../Algebra/TensorProduct/Variant0d2d5da086959f04bde34ffc823efa5dc05ce5835e3aaf07bb9f39a2a4018d1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4a49088a8bc1011ef7ff7d6636c18d1d53caea`.

Source path: `GRWTSK/Algebra/TensorProduct/Variant0d2d5da086959f04bde34ffc823efa5dc05ce5835e3aaf07bb9f39a2a4018d1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TensorProduct/Variant0d2d5da086959f04bde34ffc823efa5dc05ce5835e3aaf07bb9f39a2a4018d1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SurjectiveOnStalks` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimeSpectrum.tensorProductTo](../../../../../Algebra/TensorProduct/Variant0d2d5da086959f04bde34ffc823efa5dc05ce5835e3aaf07bb9f39a2a4018d1d.lean/declarations/primespectrum-tensorproductto--541b031112de5c08183750d1.md) | 35 | `declaration-track:541b031112de5c08183750d1474f9f2b250ac6088365428ba2758c39fed1b446` |
| 2 | `lemma` | [PrimeSpectrum.continuous_tensorProductTo](../../../../../Algebra/TensorProduct/Variant0d2d5da086959f04bde34ffc823efa5dc05ce5835e3aaf07bb9f39a2a4018d1d.lean/declarations/primespectrum-continuous-tensorproductto--aea840245bf092d0a6284a03.md) | 40 | `result-track:aea840245bf092d0a6284a03ae0c870f421d51d4add16fdd5e81fdaf180450a9` |
| 3 | `lemma` | [PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks_aux](../../../../../Algebra/TensorProduct/Variant0d2d5da086959f04bde34ffc823efa5dc05ce5835e3aaf07bb9f39a2a4018d1d.lean/declarations/primespectrum-isembedding-tensorproductto-of-surjectiveonstalks-aux--38fe6212677614751fc7d1a1.md) | 46 | `result-track:38fe6212677614751fc7d1a1b97ba6f8eec3458efa123bf0a987944a5981f600` |
| 4 | `lemma` | [PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks](../../../../../Algebra/TensorProduct/Variant0d2d5da086959f04bde34ffc823efa5dc05ce5835e3aaf07bb9f39a2a4018d1d.lean/declarations/primespectrum-isembedding-tensorproductto-of-surjectiveonstalks--9ba2dd87a80529b1fc0d2d29.md) | 67 | `result-track:9ba2dd87a80529b1fc0d2d29e1f3095a8eecd6263cf04d9eef10e167de2879f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed28f7c62f7c90d40a2a00360679fa46b6a0d791f1058290cef117bacc7b05fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/TensorProduct/Variant0d2d5da086959f04bde34ffc823efa5dc05ce5835e3aaf07bb9f39a2a4018d1d.lean","GRWTSK/_verification/specifications/Algebra/TensorProduct/Variant0d2d5da086959f04bde34ffc823efa5dc05ce5835e3aaf07bb9f39a2a4018d1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
