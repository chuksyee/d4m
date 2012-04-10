function s = TsqlSize(T)
%SIZE returns size of table.

  s = [1 1];

  Tstruct = struct(T);
  DB = struct(Tstruct.DB);

  if strcmp(DB.type,'BigTableLike')

  end
  if strcmp(DB.type,'sqlserver')

    Tstruct.d4mQuery.last();
    s(1) = Tstruct.d4mQuery.getRow();

    md = Tstruct.d4mQuery.getMetaData();
    s(2) = md.getColumnCount();

  end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% D4M: Dynamic Distributed Dimensional Data Model
% Architect: Dr. Jeremy Kepner (kepner@ll.mit.edu)
% Software Engineer: Dr. Jeremy Kepner (kepner@ll.mit.edu)
% MIT Lincoln Laboratory
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (c) <2010> Massachusetts Institute of Technology
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
