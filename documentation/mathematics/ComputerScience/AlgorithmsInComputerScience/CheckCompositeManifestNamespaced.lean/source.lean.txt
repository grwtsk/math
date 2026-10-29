-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variant3d7433d323c65a5c3e234ca87418cabd9d2e81eabe97147f0ff197479bf09713","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d7433d323c65a5c3e234ca87418cabd9d2e81eabe97147f0ff197479bf09713","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Main.Variant3d7433d323c65a5c3e234ca87418cabd9d2e81eabe97147f0ff197479bf09713","mathematical_subject":"Computation.DataStructures","original_sha256":"3d7433d323c65a5c3e234ca87418cabd9d2e81eabe97147f0ff197479bf09713","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/composite/Tools/CheckCompositeManifest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CompositeElements.Golden
import CompositeElements.Export


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Main.Variant3d7433d323c65a5c3e234ca87418cabd9d2e81eabe97147f0ff197479bf09713

def main (arguments : List String) : IO Unit := do
  match arguments with
  | [output] =>
      IO.FS.writeFile output <|
        "{" ++
          "\"formalCertificateRoot\":\"" ++
            URSM.Composite.phaseOneStaticComposite.formalCertificateRoot ++
            "\"," ++
          "\"logicalSide\":" ++
            toString URSM.Composite.projectCount ++ "," ++
          "\"schema\":\"mathematics.lean-composite-check/1\"," ++
          "\"status\":\"valid\"" ++
        "}\n"
  | _ =>
      throw <| IO.userError
        "usage: check_composite_manifest OUTPUT.json"
