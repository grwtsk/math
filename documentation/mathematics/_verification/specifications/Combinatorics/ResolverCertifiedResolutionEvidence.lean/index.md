# Verification target: Resolver Certified Resolution Evidence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd575ee13618d0180d7d812e80f8fe589f388f79",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ResolverCertifiedResolutionEvidence.lean/index.md) · [Full source](../../../../Combinatorics/ResolverCertifiedResolutionEvidence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd575ee13618d0180d7d812e80f8fe589f388f79`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Resolver/Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Refinement.CanonicalObstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Refinement.Address` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Refinement.Boundary` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FrontierResolution](../../../../Combinatorics/ResolverCertifiedResolutionEvidence.lean/declarations/frontierresolution.md) | 15 | `declaration-track:c68b47a88ce248099792652f256e2fb425d0c1df9dfdc3ae580117bbd7440b32` |
| 2 | `inductive` | [CertifiedResolutionEvidence](../../../../Combinatorics/ResolverCertifiedResolutionEvidence.lean/declarations/certifiedresolutionevidence.md) | 22 | `declaration-track:9572ee7b13f56ec13ccfc462822a09cc198b1a089ca2f637dc38de1976a77ea4` |
| 3 | `structure` | [FiniteCertifiedResolverInput](../../../../Combinatorics/ResolverCertifiedResolutionEvidence.lean/declarations/finitecertifiedresolverinput.md) | 29 | `declaration-track:85b18e96caaf13d064b2543ce45e82a12f8d9904b3e306e92fd1a8fe06d0f4f8` |
| 4 | `def` | [resolveFiniteCertified](../../../../Combinatorics/ResolverCertifiedResolutionEvidence.lean/declarations/resolvefinitecertified.md) | 40 | `declaration-track:ee0433d1920f2ab6b5570ee4d2a24a8a9f5849db8435341c1b60fd1e2732a12b` |
| 5 | `theorem` | [finite_certified_resolver_total](../../../../Combinatorics/ResolverCertifiedResolutionEvidence.lean/declarations/finite-certified-resolver-total.md) | 59 | `result-track:721d313dd34d50294e66e3c327251c0ffe1b421f13fde9b37ca42e8ba42bd05d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1ca3970a3d2bf1d24df03fdbbc038760baea8040869ce4755340b6c1ee4d3d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Resolver/Variantddd35983e65912f8ca8261ed5bad1d6bb3aca7592b516ee04409fb676d331520.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
