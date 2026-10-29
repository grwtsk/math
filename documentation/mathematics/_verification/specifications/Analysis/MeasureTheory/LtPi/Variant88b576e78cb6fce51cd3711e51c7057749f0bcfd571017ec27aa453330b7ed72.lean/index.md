# Verification target: GRWTSK.Analysis.MeasureTheory.LtPi.Variant88b576e78cb6fce51cd3711e51c7057749f0bcfd571017ec27aa453330b7ed72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a12468c1a1eafb33f6607dc6440e6eb49e56ace1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/LtPi/Variant88b576e78cb6fce51cd3711e51c7057749f0bcfd571017ec27aa453330b7ed72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Analysis/MeasureTheory/LtPi/Variant88b576e78cb6fce51cd3711e51c7057749f0bcfd571017ec27aa453330b7ed72.lean/index.md) · [Full source](../../../../../../Analysis/MeasureTheory/LtPi/Variant88b576e78cb6fce51cd3711e51c7057749f0bcfd571017ec27aa453330b7ed72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a12468c1a1eafb33f6607dc6440e6eb49e56ace1`.

Source path: `GRWTSK/Analysis/MeasureTheory/LtPi/Variant88b576e78cb6fce51cd3711e51c7057749f0bcfd571017ec27aa453330b7ed72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/LtPi/Variant88b576e78cb6fce51cd3711e51c7057749f0bcfd571017ec27aa453330b7ed72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 7; external provider; requires a separately pinned dependency.
- `SpectralProof.Core.Weight` — import line 8; external provider; requires a separately pinned dependency.
- `SpectralProof.Core.FourierDecay` — import line 9; external provider; requires a separately pinned dependency.
- `SpectralProof.Core.Integrability` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Hϕ](../../../../../../Analysis/MeasureTheory/LtPi/Variant88b576e78cb6fce51cd3711e51c7057749f0bcfd571017ec27aa453330b7ed72.lean/declarations/h--5a4f9d899b2e485c0ca0c1c1.md) | 24 | `declaration-track:5a4f9d899b2e485c0ca0c1c148a245578cb6a00a9b1da59131ea55ba6a802d2e` |
| 2 | `abbrev` | [μϕ](../../../../../../Analysis/MeasureTheory/LtPi/Variant88b576e78cb6fce51cd3711e51c7057749f0bcfd571017ec27aa453330b7ed72.lean/declarations/anonymous--b222f22e07e6a31fb2b81e35.md) | 25 | `declaration-track:b222f22e07e6a31fb2b81e35222602625ea3184939743d61d77bb5244ee72941` |
| 3 | `def` | [Lt_pi](../../../../../../Analysis/MeasureTheory/LtPi/Variant88b576e78cb6fce51cd3711e51c7057749f0bcfd571017ec27aa453330b7ed72.lean/declarations/lt-pi--e7827561e09a127691a173a3.md) | 34 | `declaration-track:e7827561e09a127691a173a37e6aefedd270fcb205afe4955396a57e2eee934f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf55d4636df8bf5eb0604224a797c7e7f5d7754ea272435ad3262997e1bd5a53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/LtPi/Variant88b576e78cb6fce51cd3711e51c7057749f0bcfd571017ec27aa453330b7ed72.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/LtPi/Variant88b576e78cb6fce51cd3711e51c7057749f0bcfd571017ec27aa453330b7ed72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
