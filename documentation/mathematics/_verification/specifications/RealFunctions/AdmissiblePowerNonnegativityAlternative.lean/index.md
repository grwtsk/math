# Verification target: Admissible Power Nonnegativity Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a0143ac41ab5d73f083a49be61eee3e4f5e4a08",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/AdmissiblePowerNonnegativity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/AdmissiblePowerNonnegativityAlternative.lean/index.md) · [Full source](../../../../RealFunctions/AdmissiblePowerNonnegativityAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a0143ac41ab5d73f083a49be61eee3e4f5e4a08`.

Source path: `GRWTSK/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/AdmissiblePowerNonnegativity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/AdmissiblePowerNonnegativity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Profiles` — import line 18; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.CarrierGrid` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Semantics` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrecessionInvocation](../../../../RealFunctions/AdmissiblePowerNonnegativityAlternative.lean/declarations/precessioninvocation.md) | 41 | `declaration-track:ba3a993524af0bc7c0f93cb3fe79c8c83668bc05eef1021194c26f604e483d2b` |
| 2 | `def` | [executePrecession](../../../../RealFunctions/AdmissiblePowerNonnegativityAlternative.lean/declarations/executeprecession.md) | 46 | `declaration-track:f01d7a90fdab5c34119b2e0a401e736718d3c8e659799c93911df53ce7262807` |
| 3 | `def` | [precessionRepresentation](../../../../RealFunctions/AdmissiblePowerNonnegativityAlternative.lean/declarations/precessionrepresentation.md) | 49 | `declaration-track:fe6c451d12aba05db9da1d15fcd71102a211f6e835da75e980c14a9ecdea39c8` |
| 4 | `theorem` | [executePrecession_represents](../../../../RealFunctions/AdmissiblePowerNonnegativityAlternative.lean/declarations/executeprecession-represents.md) | 55 | `result-track:42e2204dc3e48bdd7267872b46a712258a396cbbaaff81e58a595ad21f673f9c` |
| 5 | `theorem` | [executePrecession_nonnegative](../../../../RealFunctions/AdmissiblePowerNonnegativityAlternative.lean/declarations/executeprecession-nonnegative.md) | 63 | `result-track:d08f4c6acfc18205c8e838cb52361dfcbff077218de8d43163f050eb4457cd15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eab6fa2d05f84b25f34b78b99e34d4eb98fd01db685af8e925f1a2052073f565 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/AdmissiblePowerNonnegativity.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/AdmissiblePowerNonnegativity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
