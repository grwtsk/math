# Verification target: Uniform On

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e57db90c4f6a06f568460539fa5a492983480b2a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e57db90c4f6a06f568460539fa5a492983480b2a`.

Source path: `GRWTSK/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.InfiniteSum.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformConvergence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasProdUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/hasproduniformlyon.md) | 39 | `declaration-track:c3559def64cd9138dd8f9a414e697ca8fa3cca2ce670286eeaccc43db7e1d565` |
| 2 | `def` | [MultipliableUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/multipliableuniformlyon.md) | 47 | `declaration-track:2c6f36de2fa318899df45f5064f0e8c148c08419db3ec14c2ee76f64fbb4b15f` |
| 3 | `lemma` | [MultipliableUniformlyOn.exists](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/multipliableuniformlyon-exists.md) | 51 | `result-track:c0f047c423670af0397ac2578355b3340901a1b1db6fbd7e4dc291d247f063a2` |
| 4 | `theorem` | [HasProdUniformlyOn.multipliableUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/hasproduniformlyon-multipliableuniformlyon.md) | 56 | `result-track:7e4ecd10183b4c4045e39fcb9dcda41105a8e22ebfbe799a7fb9cbece0275c04` |
| 5 | `lemma` | [hasProdUniformlyOn_iff_tendstoUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/hasproduniformlyon-iff-tendstouniformlyon.md) | 61 | `result-track:74af39d9cb7fdf819b6da53c89da9b4a3dfe04a2e7f2d65515106c1b422ee9d4` |
| 6 | `theorem` | [HasProdUniformlyOn.hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/hasproduniformlyon-hasprod.md) | 67 | `result-track:5a7774b967688cc897e15f61cbe38384e5dc75a3f4ed10ab981b1f0dffdced5e` |
| 7 | `theorem` | [HasProdUniformlyOn.tprod_eqOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/hasproduniformlyon-tprod-eqon.md) | 72 | `result-track:aba01a46562b698ec7fbc7d90afce89a341acc90ba2333aeae6418754712f1a7` |
| 8 | `theorem` | [HasProdUniformlyOn.tprod_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/hasproduniformlyon-tprod-eq.md) | 77 | `result-track:f1398f04b1df03240fa5c6145ff41dadb19c6efe4ed24e49c46526a21d753549` |
| 9 | `theorem` | [MultipliableUniformlyOn.multipliable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/multipliableuniformlyon-multipliable.md) | 84 | `result-track:fbc30def68751f029c499f148688c38e33397e8696a60d0a23db6e6fd3fd30f2` |
| 10 | `theorem` | [MultipliableUniformlyOn.hasProdUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/multipliableuniformlyon-hasproduniformlyon.md) | 89 | `result-track:811efb574983e0ff0c44323e24eb06966f8296fad1ce2ef6f84832066ef1104c` |
| 11 | `def` | [HasProdLocallyUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/hasprodlocallyuniformlyon.md) | 112 | `declaration-track:522e8a8b495da91a6c024d348a9648ad4d8d8e5867b02bb42758ab41408d69a7` |
| 12 | `def` | [MultipliableLocallyUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/multipliablelocallyuniformlyon.md) | 120 | `declaration-track:03b8bc23e954a8e107983378f3cc24e226162ff9d613f87b4c9458f662503af3` |
| 13 | `lemma` | [hasProdLocallyUniformlyOn_iff_tendstoLocallyUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/hasprodlocallyuniformlyon-iff-tendstolocallyuniformlyon.md) | 123 | `result-track:de7f65f9f801e96559c07d76769e17b60b77c90d157a8776459e7b7003095863` |
| 14 | `lemma` | [hasProdLocallyUniformlyOn_of_of_forall_exists_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/hasprodlocallyuniformlyon-of-of-forall-exists-nhds.md) | 134 | `result-track:6ce605d150b55d8b9e0d406d39d798e6c4e640764154b1962a0028bc459ca0d2` |
| 15 | `theorem` | [HasProdLocallyUniformlyOn.multipliableLocallyUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/hasprodlocallyuniformlyon-multipliablelocallyuniformlyon.md) | 146 | `result-track:dceaab1f24c782d217b0b358af197bfd0fe90e5a00a99c2df392002d3b47aa45` |
| 16 | `lemma` | [multipliableLocallyUniformlyOn_of_of_forall_exists_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/multipliablelocallyuniformlyon-of-of-forall-exists-nhds.md) | 156 | `result-track:e6d120f5360a2f744dcc324a728e33ae1eb29878e7acf15c391e4abcbd2481dc` |
| 17 | `theorem` | [HasProdLocallyUniformlyOn.hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/hasprodlocallyuniformlyon-hasprod.md) | 171 | `result-track:c2c710fa236b4552b3b37df6373c5ddb8ff1a0f39f1bd50ee5468d798c0e467e` |
| 18 | `theorem` | [MultipliableLocallyUniformlyOn.multipliable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/multipliablelocallyuniformlyon-multipliable.md) | 176 | `result-track:9d2b8ade155ef38316ada1759cbf8faf5a261479e07439bea046bc893bc162ca` |
| 19 | `theorem` | [MultipliableLocallyUniformlyOn.hasProdLocallyUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/multipliablelocallyuniformlyon-hasprodlocallyuniformlyon.md) | 181 | `result-track:d4e93fd7b6cb339a0df06216e60637e7050c73eb4c2ca7ea74af6a11d2f1fd57` |
| 20 | `theorem` | [HasProdLocallyUniformlyOn.tprod_eqOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformOn.lean/declarations/hasprodlocallyuniformlyon-tprod-eqon.md) | 187 | `result-track:87104990a59ba3f9203120506ac31c46732c54a4738fab9510fac0231adca1da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74164a04e53d721f400031d4dcbccc3fb43be84c51c42d75528dcf79dcfab9d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean","GRWTSK/_verification/specifications/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
