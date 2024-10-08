/*
 * Copyright 2021 Mark-Christoph Müller
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License. */

package org.eml.MMAX2.annotation.markables;

public class MarkableIDComparator implements java.util.Comparator
{
    /** Creates new MarkableIDComparator */
    public MarkableIDComparator() 
    {
        super();
    }
    
    public int compare(Object _markable1, Object _markable2)
    {
        String entry1 = ((Markable)_markable1).getID();
        String entry2 = ((Markable)_markable2).getID();
        
        int id1 = Integer.parseInt(entry1.substring(entry1.indexOf("_")+1));
        int id2 = Integer.parseInt(entry2.substring(entry2.indexOf("_")+1));
        
        if (id1 < id2) return -1;
        if (id2 < id1) return 1;
        return 0;
    }
}

