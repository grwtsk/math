# Verification target: Auxiliary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f628c9f10ed8bb6e5ec85bacb2b4e55c048b003",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant53ec36e8ef1845de99ac41de2279716936de36327aa3fd38b2b3235865493189.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/AuxiliaryNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/AuxiliaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f628c9f10ed8bb6e5ec85bacb2b4e55c048b003`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant53ec36e8ef1845de99ac41de2279716936de36327aa3fd38b2b3235865493189.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant53ec36e8ef1845de99ac41de2279716936de36327aa3fd38b2b3235865493189.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.RealDeriv` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasDerivAt_ofReal](../../../../RealFunctions/AuxiliaryNamespaced.lean/declarations/hasderivat-ofreal.md) | 37 | `result-track:3699d0098401c22f99e8017f0cadd0477b380673d4f64f57d38d1e8e739e36f8` |
| 2 | `lemma` | [deriv_ofReal](../../../../RealFunctions/AuxiliaryNamespaced.lean/declarations/deriv-ofreal.md) | 40 | `result-track:ac132642f179e176ea3266f67d49cfb1ba6293795f084b06e37f1ed4ca2124d5` |
| 3 | `lemma` | [differentiableAt_ofReal](../../../../RealFunctions/AuxiliaryNamespaced.lean/declarations/differentiableat-ofreal.md) | 43 | `result-track:494ac85ac4d08bd389b7089aa4ebe04256b02ef1b86c2296e28b35554172316d` |
| 4 | `lemma` | [DifferentiableAt.comp_ofReal](../../../../RealFunctions/AuxiliaryNamespaced.lean/declarations/differentiableat-comp-ofreal.md) | 48 | `result-track:5dfbea6c68d5673fa9a699d2fe39dea74ff7ed51e19fa3d50d6dd996d6e60ae5` |
| 5 | `lemma` | [deriv.comp_ofReal](../../../../RealFunctions/AuxiliaryNamespaced.lean/declarations/deriv-comp-ofreal.md) | 52 | `result-track:30e72ad572388fac64b609b6a5357154df460cabc376d7d2c003f5a7e8c06015` |
| 6 | `lemma` | [Differentiable.comp_ofReal](../../../../RealFunctions/AuxiliaryNamespaced.lean/declarations/differentiable-comp-ofreal.md) | 56 | `result-track:65d82646169fe318c327d5f7efbcef83bc2a111b8ea018dda0a6f10367cbf636` |
| 7 | `lemma` | [DifferentiableAt.ofReal_comp](../../../../RealFunctions/AuxiliaryNamespaced.lean/declarations/differentiableat-ofreal-comp.md) | 60 | `result-track:5b9359aaaaa4a9ae3fd1dae5719aa76c0dfbf92e03ca2255bccf97bd41fafe7b` |
| 8 | `lemma` | [Differentiable.ofReal_comp](../../../../RealFunctions/AuxiliaryNamespaced.lean/declarations/differentiable-ofreal-comp.md) | 64 | `result-track:b3635b3e133d2ef3927c535f08221736d7d8956b9b40bbda51511bbf239f4547` |
| 9 | `lemma` | [HasDerivAt.of_hasDerivAt_ofReal_comp](../../../../RealFunctions/AuxiliaryNamespaced.lean/declarations/hasderivat-of-hasderivat-ofreal-comp.md) | 69 | `result-track:39109296b27ec9f6a40edb0895c734f97b67b894c5a09ceb55e88a7e158fac2e` |
| 10 | `lemma` | [DifferentiableAt.ofReal_comp_iff](../../../../RealFunctions/AuxiliaryNamespaced.lean/declarations/differentiableat-ofreal-comp-iff.md) | 80 | `result-track:7414fd7f6cc85345022d40f23890200272f4cfe95b564de1a3152f71ec472746` |
| 11 | `lemma` | [Differentiable.ofReal_comp_iff](../../../../RealFunctions/AuxiliaryNamespaced.lean/declarations/differentiable-ofreal-comp-iff.md) | 86 | `result-track:88c9455f93221f9fe1c3b8601ecf58ac2e7ce07cffea11ee03808b78cfbf4ce7` |
| 12 | `lemma` | [deriv.ofReal_comp](../../../../RealFunctions/AuxiliaryNamespaced.lean/declarations/deriv-ofreal-comp.md) | 90 | `result-track:fa21f17de6b569576c21ef856cf8b590559b2a846fa4f5dd5406d27fcadcde40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8bad62f9b61c5bffb18bb58cd8be33fe7bf452c290a7c066efa34b81f3c8498 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant53ec36e8ef1845de99ac41de2279716936de36327aa3fd38b2b3235865493189.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant53ec36e8ef1845de99ac41de2279716936de36327aa3fd38b2b3235865493189.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
