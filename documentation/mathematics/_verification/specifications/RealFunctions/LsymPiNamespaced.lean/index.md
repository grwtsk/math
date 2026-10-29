# Verification target: Lsym Pi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef35d2514286156c748f7e631ab204b7e73b0cea",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/LsymPiNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/LsymPiNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef35d2514286156c748f7e631ab204b7e73b0cea`.

Source path: `GRWTSK/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SpectralProof.Operators.LtPi` — import line 6; external provider; requires a separately pinned dependency.
- `SpectralProof.Core.Integrability` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Trace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lsym_pi](../../../../RealFunctions/LsymPiNamespaced.lean/declarations/lsym-pi.md) | 28 | `declaration-track:de8c0233d66fd3f969cbd4eba536ce45e34f7ad50922f0017bd863a3e628ee2a` |
| 2 | `lemma` | [trace_class_Lsym_pi](../../../../RealFunctions/LsymPiNamespaced.lean/declarations/trace-class-lsym-pi.md) | 43 | `result-track:f7f73336dd293ae9422b2976b19113438ac645d4d72cef06d1ba062b6886a9d2` |
| 3 | `lemma` | [self_adjoint_Lsym_pi](../../../../RealFunctions/LsymPiNamespaced.lean/declarations/self-adjoint-lsym-pi.md) | 55 | `result-track:6105dcf82304d2066df268c35a3d36234e9fae11cd8277e2e8b940e3a34eb88c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f07b359c27e41f9e5a43fef6d4ee1282b314ee35daf870dacadd820cd530f082 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean","GRWTSK/_verification/specifications/Analysis/LsymPi/Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
