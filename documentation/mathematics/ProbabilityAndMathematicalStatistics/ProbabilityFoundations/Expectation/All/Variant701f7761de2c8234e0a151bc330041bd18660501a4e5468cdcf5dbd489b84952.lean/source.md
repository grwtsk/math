# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.All.Variant701f7761de2c8234e0a151bc330041bd18660501a4e5468cdcf5dbd489b84952

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b569dd30e99f7703ad94656b8b08a30759d61a9` · SHA-256 `edb938b0d47a31f5e0a7678546ecae1c02dea6947f85c507cc22b253e512ab63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Residue.Variant28aa6551217497f9dea741f27e8827b305fdd202705b2142791e59a919236d16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28aa6551217497f9dea741f27e8827b305fdd202705b2142791e59a919236d16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.Residue.Variant28aa6551217497f9dea741f27e8827b305fdd202705b2142791e59a919236d16","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"28aa6551217497f9dea741f27e8827b305fdd202705b2142791e59a919236d16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/All.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Residue
import Mathematics.SemiLocalDefect.ResidueDeflection.Phase
import Mathematics.SemiLocalDefect.ResidueDeflection.Tuple
import Mathematics.SemiLocalDefect.ResidueDeflection.Path
import Mathematics.SemiLocalDefect.ResidueDeflection.Graph
import Mathematics.SemiLocalDefect.ResidueDeflection.SafeNeighbors
import Mathematics.SemiLocalDefect.ResidueDeflection.AmplitudeTransport
import Mathematics.SemiLocalDefect.ResidueDeflection.PhaseTransport
import Mathematics.SemiLocalDefect.ResidueDeflection.Cocycle
import Mathematics.SemiLocalDefect.ResidueDeflection.PolarizedSheaf
import Mathematics.SemiLocalDefect.ResidueDeflection.PhaseRepresentation
import Mathematics.SemiLocalDefect.ResidueDeflection.TraceTransport
import Mathematics.SemiLocalDefect.ResidueDeflection.TraceResidual
import Mathematics.SemiLocalDefect.ResidueDeflection.Certificate
import Mathematics.SemiLocalDefect.ResidueDeflection.UnknownLedger
import Mathematics.SemiLocalDefect.ResidueDeflection.Noninterference
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.All
import Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic.All

/-!
# Polarized residue-deflection sheaf

Zero modulo three remains an excluded obstruction stratum.  Safe residues are
transported by a `C₂` phase, positive amplitudes use an independent channel,
defects are bypassed by certified safe paths, and trace conservation follows
only from exact covariance or a visible bounded residual.

The fixed-Hilbert refinement realizes transport as continuous linear maps,
defines the literal pullback defect `T* D_next T - D_current`, telescopes it
over typed safe paths, and exposes arithmetic meaning only through an exact
five-term trace correspondence with separately budgeted residuals.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Residue.Variant28aa6551217497f9dea741f27e8827b305fdd202705b2142791e59a919236d16

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e6ada5c6d3a246325ab4d886eeff6bccf01a720e499bdd3d35ccad400acbd52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/All/Variant701f7761de2c8234e0a151bc330041bd18660501a4e5468cdcf5dbd489b84952.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
