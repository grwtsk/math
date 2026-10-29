# Verification target: Coordination Supplement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fa11fbd2fc15f91ecd83091f470d025ebbeed38",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variantbfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CoordinationSupplement.lean/index.md) · [Full source](../../../../Combinatorics/CoordinationSupplement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fa11fbd2fc15f91ecd83091f470d025ebbeed38`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variantbfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variantbfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DivisibilityPacking` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PackingObservations` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.FactorState` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PackingDensity](../../../../Combinatorics/CoordinationSupplement.lean/declarations/packingdensity.md) | 26 | `declaration-track:4e163b7b34690211e883d1b7cfffc55afab03fe52e0d5351209f62473834d683` |
| 2 | `theorem` | [packing_density_checked](../../../../Combinatorics/CoordinationSupplement.lean/declarations/packing-density-checked.md) | 33 | `result-track:6fa85ce5b06061ea10a581f521d7234e5f1da8644ebc912d931f0fdaacdc1fde` |
| 3 | `def` | [PackingDepthRefinement](../../../../Combinatorics/CoordinationSupplement.lean/declarations/packingdepthrefinement.md) | 38 | `declaration-track:ecf276534155141e97803c6972ac6a752a17a033dcf5b8525f01e82df03c8e29` |
| 4 | `theorem` | [packing_depth_refinement_checked](../../../../Combinatorics/CoordinationSupplement.lean/declarations/packing-depth-refinement-checked.md) | 54 | `result-track:68d551e10ac5683f7bfca28e1889e13461f205dc86461b4b8979b0669668e250` |
| 5 | `def` | [PackingRawProper](../../../../Combinatorics/CoordinationSupplement.lean/declarations/packingrawproper.md) | 64 | `declaration-track:fb101204679bc1f8dee82776d824dd93fe6dac5cdb6b16d0a8ad6493de64e8d2` |
| 6 | `theorem` | [packing_raw_proper_checked](../../../../Combinatorics/CoordinationSupplement.lean/declarations/packing-raw-proper-checked.md) | 76 | `result-track:d7675457d2a856bc1ab4d757ecb003f89956c3019d43d6eaa2816d01dd330556` |
| 7 | `def` | [PackingFactorTerminal](../../../../Combinatorics/CoordinationSupplement.lean/declarations/packingfactorterminal.md) | 84 | `declaration-track:50b4509958aacef5fce455c4a136b6d290f9cc8870072248ca739ab756e2441c` |
| 8 | `theorem` | [packing_factor_terminal_checked](../../../../Combinatorics/CoordinationSupplement.lean/declarations/packing-factor-terminal-checked.md) | 97 | `result-track:74494b6c523048000bb8153f062874339940d91ae91df4ceeaef41d7b94f3715` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d82ecbe7aac0521705cbaa1b688aa76c526d7fac03dd81b4335610bd61e4e6a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variantbfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variantbfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
