# Verification target: Resolver Namespaced Extension Status

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f1105781c349084fff3c7b81351007f914615ba",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant42f225d4bdc2daa670673cf7e9615456249a5b870e88e30493bef065ce82ada8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ResolverNamespacedExtensionStatus.lean/index.md) · [Full source](../../../../Combinatorics/ResolverNamespacedExtensionStatus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f1105781c349084fff3c7b81351007f914615ba`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant42f225d4bdc2daa670673cf7e9615456249a5b870e88e30493bef065ce82ada8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Resolver/Variant42f225d4bdc2daa670673cf7e9615456249a5b870e88e30493bef065ce82ada8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.MobiusOntology.Authority` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.BranchSeparation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExtensionStatus](../../../../Combinatorics/ResolverNamespacedExtensionStatus.lean/declarations/extensionstatus.md) | 24 | `declaration-track:e2b8d769da81646bfb4693727e983e1b37e6704ae4ba92387beb0282c7b79af5` |
| 2 | `abbrev` | [ArithmeticSecurityExtensionStatus](../../../../Combinatorics/ResolverNamespacedExtensionStatus.lean/declarations/arithmeticsecurityextensionstatus.md) | 29 | `declaration-track:442a8c6c79c045e6d09c661866c72497cf0828f6eff505d9ffc096bf0df1af57` |
| 3 | `def` | [unresolvedArithmeticSecurityExtension](../../../../Combinatorics/ResolverNamespacedExtensionStatus.lean/declarations/unresolvedarithmeticsecurityextension.md) | 37 | `declaration-track:1f7e230d53e33b924a0d3061dde0fd47bda0023694649c2a7140c8950dbc9d8a` |
| 4 | `structure` | [SolvedMobiusOntologyPayload](../../../../Combinatorics/ResolverNamespacedExtensionStatus.lean/declarations/solvedmobiusontologypayload.md) | 47 | `declaration-track:8ddf0f19e90ae2a3358c523f9bc085c91446ef1368dc59a2fab1841174622122` |
| 5 | `inductive` | [MobiusOntologyResolution](../../../../Combinatorics/ResolverNamespacedExtensionStatus.lean/declarations/mobiusontologyresolution.md) | 69 | `declaration-track:db4185a4f71b2e03ed48f020afe4f783eea2b32a810c780a28aa09ebd16f37c1` |
| 6 | `inductive` | [CoreEvaluation](../../../../Combinatorics/ResolverNamespacedExtensionStatus.lean/declarations/coreevaluation.md) | 97 | `declaration-track:59275c2dafd37c554697657876a1ef4615b2bcac3beace8643ae10bff2aefad4` |
| 7 | `structure` | [ResolverCut](../../../../Combinatorics/ResolverNamespacedExtensionStatus.lean/declarations/resolvercut.md) | 108 | `declaration-track:d94fb3632b579d5fc111b791f2e190d57b074125a2707df0b588de1b13cd1238` |
| 8 | `def` | [resolveMobiusOntology](../../../../Combinatorics/ResolverNamespacedExtensionStatus.lean/declarations/resolvemobiusontology.md) | 132 | `declaration-track:38a41dbb6157d1a0d9ff0c5ca8e7a9810442a2508a5f05b38755c04ea5686cb3` |
| 9 | `theorem` | [resolveMobiusOntology_total](../../../../Combinatorics/ResolverNamespacedExtensionStatus.lean/declarations/resolvemobiusontology-total.md) | 181 | `result-track:c66734d8551d0001ee08eb305fef3143157fe0602de9f4328713a7cbaaa7dc7b` |
| 10 | `theorem` | [solved_core_sound](../../../../Combinatorics/ResolverNamespacedExtensionStatus.lean/declarations/solved-core-sound.md) | 203 | `result-track:693aed3004ee4752faa71b7c87a84a26f14e4a834cb325e9fa85cacca77d295c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8ab00df86593240ad624a0e0f3518035bd4892c03cfb3e8c6e13c6d14610908 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant42f225d4bdc2daa670673cf7e9615456249a5b870e88e30493bef065ce82ada8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Resolver/Variant42f225d4bdc2daa670673cf7e9615456249a5b870e88e30493bef065ce82ada8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
